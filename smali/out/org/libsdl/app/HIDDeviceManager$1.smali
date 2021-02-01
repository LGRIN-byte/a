.class Lorg/libsdl/app/HIDDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HIDDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceManager;


# direct methods
.method constructor <init>(Lorg/libsdl/app/HIDDeviceManager;)V
    .registers 2
    .param p1, "this$0"    # Lorg/libsdl/app/HIDDeviceManager;

    .line 63
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 68
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 69
    .local v1, "usbDevice":Landroid/hardware/usb/UsbDevice;
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    invoke-static {v2, v1}, Lorg/libsdl/app/HIDDeviceManager;->access$000(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V

    .line 70
    .end local v1    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    goto :goto_4c

    :cond_1a
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 71
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 72
    .restart local v1    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    invoke-static {v2, v1}, Lorg/libsdl/app/HIDDeviceManager;->access$100(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V

    .line 73
    .end local v1    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    goto :goto_4c

    :cond_30
    const-string v1, "org.libsdl.app.USB_PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 74
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 75
    .restart local v1    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    const-string v3, "permission"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/libsdl/app/HIDDeviceManager;->access$200(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;Z)V

    .line 77
    .end local v1    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    :cond_4c
    :goto_4c
    return-void
.end method
