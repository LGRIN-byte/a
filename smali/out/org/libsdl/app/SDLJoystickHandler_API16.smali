.class Lorg/libsdl/app/SDLJoystickHandler_API16;
.super Lorg/libsdl/app/SDLJoystickHandler_API12;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 4
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .line 298
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "desc":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 301
    return-object v0

    .line 304
    :cond_d
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
