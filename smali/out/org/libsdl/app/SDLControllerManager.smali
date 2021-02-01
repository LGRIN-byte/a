.class public Lorg/libsdl/app/SDLControllerManager;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDLControllerManager"

.field protected static mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

.field protected static mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 62
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLJoystickHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static hapticRun(IFI)V
    .registers 4
    .param p0, "device_id"    # I
    .param p1, "intensity"    # F
    .param p2, "length"    # I

    .line 83
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0, p0, p1, p2}, Lorg/libsdl/app/SDLHapticHandler;->run(IFI)V

    .line 84
    return-void
.end method

.method public static hapticStop(I)V
    .registers 2
    .param p0, "device_id"    # I

    .line 91
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLHapticHandler;->stop(I)V

    .line 92
    return-void
.end method

.method public static initialize()V
    .registers 2

    .line 39
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    if-nez v0, :cond_35

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_12

    .line 41
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API19;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API19;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    goto :goto_35

    .line 42
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_20

    .line 43
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API16;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API16;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    goto :goto_35

    .line 44
    :cond_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2e

    .line 45
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API12;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    goto :goto_35

    .line 47
    :cond_2e
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 51
    :cond_35
    :goto_35
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    if-nez v0, :cond_4e

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_47

    .line 53
    new-instance v0, Lorg/libsdl/app/SDLHapticHandler_API26;

    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler_API26;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    goto :goto_4e

    .line 55
    :cond_47
    new-instance v0, Lorg/libsdl/app/SDLHapticHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 58
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static isDeviceSDLJoystick(I)Z
    .registers 6
    .param p0, "deviceId"    # I

    .line 96
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 99
    .local v0, "device":Landroid/view/InputDevice;
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-gez p0, :cond_a

    goto :goto_24

    .line 102
    :cond_a
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 117
    .local v2, "sources":I
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-eq v3, v4, :cond_22

    and-int/lit16 v3, v2, 0x201

    const/16 v4, 0x201

    if-eq v3, v4, :cond_22

    and-int/lit16 v3, v2, 0x401

    const/16 v4, 0x401

    if-ne v3, v4, :cond_21

    goto :goto_22

    :cond_21
    goto :goto_23

    :cond_22
    :goto_22
    const/4 v1, 0x1

    :goto_23
    return v1

    .line 100
    .end local v2    # "sources":I
    :cond_24
    :goto_24
    return v1
.end method

.method public static native nativeAddHaptic(ILjava/lang/String;)I
.end method

.method public static native nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I
.end method

.method public static native nativeRemoveHaptic(I)I
.end method

.method public static native nativeRemoveJoystick(I)I
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeHat(IIII)V
.end method

.method public static native onNativeJoy(IIF)V
.end method

.method public static native onNativePadDown(II)I
.end method

.method public static native onNativePadUp(II)I
.end method

.method public static pollHapticDevices()V
    .registers 1

    .line 76
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLHapticHandler;->pollHapticDevices()V

    .line 77
    return-void
.end method

.method public static pollInputDevices()V
    .registers 1

    .line 69
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLJoystickHandler;->pollInputDevices()V

    .line 70
    return-void
.end method
