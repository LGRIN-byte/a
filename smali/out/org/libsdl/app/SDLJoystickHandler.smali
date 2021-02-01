.class Lorg/libsdl/app/SDLJoystickHandler;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public pollInputDevices()V
    .registers 1

    .line 141
    return-void
.end method
