.class Lorg/libsdl/app/SDLGenericMotionListener_API24;
.super Lorg/libsdl/app/SDLGenericMotionListener_API12;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 636
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 708
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_b

    .line 709
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    return v0

    .line 712
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 718
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_b

    .line 719
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    return v0

    .line 722
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public inRelativeMode()Z
    .registers 2

    .line 697
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x201

    if-eq v0, v1, :cond_55

    const/16 v1, 0x401

    if-eq v0, v1, :cond_55

    const/16 v1, 0x2002

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const v1, 0x1000010

    if-eq v0, v1, :cond_55

    goto :goto_54

    .line 653
    :cond_17
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-nez v0, :cond_1c

    .line 654
    goto :goto_54

    .line 656
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 657
    .local v0, "action":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_5a

    .line 678
    goto :goto_54

    .line 659
    :pswitch_25
    const/16 v3, 0xa

    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    .line 660
    .local v3, "x":F
    const/16 v4, 0x9

    invoke-virtual {p2, v4, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v4

    .line 661
    .local v4, "y":F
    invoke-static {v2, v0, v3, v4, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 662
    return v1

    .line 665
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_35
    iget-boolean v3, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v3, :cond_46

    .line 666
    const/16 v3, 0x1b

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 667
    .restart local v3    # "x":F
    const/16 v4, 0x1c

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 667
    .restart local v4    # "y":F
    goto :goto_4e

    .line 670
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_46
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 671
    .restart local v3    # "x":F
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 674
    .restart local v4    # "y":F
    :goto_4e
    iget-boolean v5, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    invoke-static {v2, v0, v3, v4, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 675
    return v1

    .line 687
    .end local v0    # "action":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_54
    return v2

    .line 650
    :cond_55
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_5a
    .packed-switch 0x7
        :pswitch_35
        :pswitch_25
    .end packed-switch
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 702
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    .line 703
    const/4 v0, 0x1

    return v0
.end method

.method public supportsRelativeMouse()Z
    .registers 2

    .line 692
    const/4 v0, 0x1

    return v0
.end method
