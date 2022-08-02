#include "wic.h"

int main(int argc, char **argv)
{
    int s;
    static uint8_t rx[1000];
    struct wic_inst inst;
    struct wic_init_arg arg = {0};

    arg.rx = rx; arg.rx_max = sizeof(rx);    

    arg.on_send = on_send_handler;    
    arg.on_open = on_open_handler;        
    arg.on_message = on_message_handler;        
    arg.on_close_transport = on_close_transport_handler;        
    arg.on_buffer = on_buffer_handler;        

    arg.app = &s;
    arg.url = "ws://echo.websocket.org/";
    arg.role = WIC_ROLE_CLIENT;

    if(!wic_init(&inst, &arg)){

        exit(EXIT_FAILURE);
    };

    if(transport_open_client(wic_get_url_schema(&inst),
            wic_get_url_hostname(&inst), wic_get_url_port(&inst), &s)){

        if(wic_start(&inst) == WIC_STATUS_SUCCESS){

            while(transport_recv(s, &inst));
        }
        else{

            transport_close(&s);
        }
    }
    
    exit(EXIT_SUCCESS);
}

static void on_open_handler(struct wic_inst *inst)
{
    const char msg[] = "hello world";

    wic_send_text(inst, true, msg, strlen(msg));    
} 

static void on_close_transport_handler(struct wic_inst *inst)
{
    transport_close((int *)wic_get_app(inst));
}

static void on_send_handler(struct wic_inst *inst, const void *data,
        size_t size, enum wic_frame_type type)
{
    transport_write(*(int *)wic_get_app(inst), data, size);
}

static void *on_buffer_handler(struct wic_inst *inst, size_t min_size,
        enum wic_frame_type type, size_t *max_size)
{
    static uint8_t tx[1000U];

    *max_size = sizeof(tx);

    return (min_size <= sizeof(tx)) ? tx : NULL;
}

static bool on_message_handler(struct wic_inst *inst, enum wic_encoding encoding, bool fin, const char *data, uint16_t size)
{
    if(encoding == WIC_ENCODING_UTF8){

        printf("received text: %.*s\n", size, data);
    }

    wic_close(inst);

    return true;
}