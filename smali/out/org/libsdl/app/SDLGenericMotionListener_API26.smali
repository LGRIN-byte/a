.class Lorg/libsdl/app/SDLGenericMotionListener_API26;
.super Lorg/libsdl/app/SDLGenericMotionListener_API24;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 728
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 844
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public inRelativeMode()Z
    .registers 2

    .line 806
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 737
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x201

    if-eq v0, v1, :cond_70

    const/16 v1, 0x401

    if-eq v0, v1, :cond_70

    const/16 v1, 0x2002

    const/16 v2, 0x9

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x3002

    if-eq v0, v1, :cond_4a

    const v1, 0x20004

    if-eq v0, v1, :cond_25

    const v1, 0x1000010

    if-eq v0, v1, :cond_70

    goto :goto_6f

    .line 769
    :cond_25
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-nez v0, :cond_2a

    .line 770
    goto :goto_6f

    .line 772
    :cond_2a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 773
    .local v0, "action":I
    packed-switch v0, :pswitch_data_76

    .line 787
    goto :goto_6f

    .line 775
    :pswitch_32
    invoke-virtual {p2, v3, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    .line 776
    .local v1, "x":F
    invoke-virtual {p2, v2, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 777
    .local v2, "y":F
    invoke-static {v5, v0, v1, v2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 778
    return v4

    .line 781
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_3e
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 782
    .restart local v1    # "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 783
    .restart local v2    # "y":F
    invoke-static {v5, v0, v1, v2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 784
    return v4

    .line 745
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_4a
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-nez v0, :cond_4f

    .line 746
    goto :goto_6f

    .line 749
    :cond_4f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 750
    .restart local v0    # "action":I
    packed-switch v0, :pswitch_data_7e

    .line 764
    goto :goto_6f

    .line 752
    :pswitch_57
    invoke-virtual {p2, v3, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    .line 753
    .restart local v1    # "x":F
    invoke-virtual {p2, v2, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    .line 754
    .restart local v2    # "y":F
    invoke-static {v5, v0, v1, v2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 755
    return v4

    .line 758
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_63
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 759
    .restart local v1    # "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 760
    .restart local v2    # "y":F
    invoke-static {v5, v0, v1, v2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 761
    return v4

    .line 796
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_6f
    return v5

    .line 741
    :cond_70
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_76
    .packed-switch 0x7
        :pswitch_3e
        :pswitch_32
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x7
        :pswitch_63
        :pswitch_57
    .end packed-switch
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .registers 2

    .line 830
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 831
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    .line 833
    :cond_11
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .line 811
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_d

    goto :goto_f

    .line 823
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 812
    :cond_f
    :goto_f
    if-eqz p1, :cond_19

    .line 813
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    goto :goto_20

    .line 816
    :cond_19
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    .line 818
    :goto_20
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public supportsRelativeMouse()Z
    .registers 3

    .line 801
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
