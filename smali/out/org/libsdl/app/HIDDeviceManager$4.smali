.class Lorg/libsdl/app/HIDDeviceManager$4;
.super Ljava/lang/Object;
.source "HIDDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/HIDDeviceManager;->chromebookConnectionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceManager;

.field final synthetic val$finalThis:Lorg/libsdl/app/HIDDeviceManager;


# direct methods
.method constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Lorg/libsdl/app/HIDDeviceManager;)V
    .registers 3
    .param p1, "this$0"    # Lorg/libsdl/app/HIDDeviceManager;

    .line 468
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager$4;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceManager$4;->val$finalThis:Lorg/libsdl/app/HIDDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 471
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager$4;->val$finalThis:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->chromebookConnectionHandler()V

    .line 472
    return-void
.end method
