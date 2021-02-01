.class public Lorg/libsdl/app/SDLActivity;
.super Landroid/app/Activity;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLActivity$ShowTextInputTask;,
        Lorg/libsdl/app/SDLActivity$SDLCommandHandler;,
        Lorg/libsdl/app/SDLActivity$NativeState;
    }
.end annotation


# static fields
.field static final COMMAND_CHANGE_TITLE:I = 0x1

.field static final COMMAND_CHANGE_WINDOW_STYLE:I = 0x2

.field static final COMMAND_SET_KEEP_SCREEN_ON:I = 0x5

.field static final COMMAND_TEXTEDIT_HIDE:I = 0x3

.field protected static final COMMAND_USER:I = 0x8000

.field protected static final SDL_ORIENTATION_LANDSCAPE:I = 0x1

.field protected static final SDL_ORIENTATION_LANDSCAPE_FLIPPED:I = 0x2

.field protected static final SDL_ORIENTATION_PORTRAIT:I = 0x3

.field protected static final SDL_ORIENTATION_PORTRAIT_FLIPPED:I = 0x4

.field protected static final SDL_ORIENTATION_UNKNOWN:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_ARROW:I = 0x0

.field private static final SDL_SYSTEM_CURSOR_CROSSHAIR:I = 0x3

.field private static final SDL_SYSTEM_CURSOR_HAND:I = 0xb

.field private static final SDL_SYSTEM_CURSOR_IBEAM:I = 0x1

.field private static final SDL_SYSTEM_CURSOR_NO:I = 0xa

.field private static final SDL_SYSTEM_CURSOR_NONE:I = -0x1

.field private static final SDL_SYSTEM_CURSOR_SIZEALL:I = 0x9

.field private static final SDL_SYSTEM_CURSOR_SIZENESW:I = 0x6

.field private static final SDL_SYSTEM_CURSOR_SIZENS:I = 0x8

.field private static final SDL_SYSTEM_CURSOR_SIZENWSE:I = 0x5

.field private static final SDL_SYSTEM_CURSOR_SIZEWE:I = 0x7

.field private static final SDL_SYSTEM_CURSOR_WAIT:I = 0x2

.field private static final SDL_SYSTEM_CURSOR_WAITARROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SDL"

.field private static expansionFile:Ljava/lang/Object;

.field private static expansionFileMethod:Ljava/lang/reflect/Method;

.field public static mBrokenLibraries:Z

.field protected static mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

.field public static mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mCurrentOrientation:I

.field protected static mCursors:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mExitCalledFromJava:Z

.field protected static mFullscreenModeActive:Z

.field protected static mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

.field public static mHasFocus:Z

.field public static mIsResumedCalled:Z

.field public static mIsSurfaceReady:Z

.field protected static mLastCursorID:I

.field protected static mLayout:Landroid/view/ViewGroup;

.field protected static mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

.field public static mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

.field protected static mSDLThread:Ljava/lang/Thread;

.field protected static mScreenKeyboardShown:Z

.field public static mSeparateMouseAndTouch:Z

.field protected static mSingleton:Lorg/libsdl/app/SDLActivity;

.field protected static mSurface:Lorg/libsdl/app/SDLSurface;

.field protected static mTextEdit:Landroid/view/View;


# instance fields
.field commandHandler:Landroid/os/Handler;

.field protected dialogs:I

.field protected final messageboxSelection:[I

.field private final rehideSystemUi:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 648
    new-instance v0, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;

    invoke-direct {v0}, Lorg/libsdl/app/SDLActivity$SDLCommandHandler;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    .line 1151
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lorg/libsdl/app/SDLActivity;->dialogs:I

    .line 1353
    new-instance v0, Lorg/libsdl/app/SDLActivity$7;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$7;-><init>(Lorg/libsdl/app/SDLActivity;)V

    iput-object v0, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    return-void
.end method

.method public static clipboardGetText()Ljava/lang/String;
    .registers 1

    .line 1389
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardGetText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clipboardHasText()Z
    .registers 1

    .line 1382
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardHasText()Z

    move-result v0

    return v0
.end method

.method public static clipboardSetText(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 1396
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    invoke-interface {v0, p0}, Lorg/libsdl/app/SDLClipboardHandler;->clipboardSetText(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method public static createCustomCursor([IIIII)I
    .registers 21
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "hotSpotX"    # I
    .param p4, "hotSpotY"    # I

    .line 1403
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1404
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v5, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    sput v5, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    .line 1407
    const/4 v5, 0x0

    :try_start_13
    const-string v7, "android.view.PointerIcon"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1408
    .local v7, "PointerIconClass":Ljava/lang/Class;
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/graphics/Bitmap;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 1409
    .local v9, "arg_types":[Ljava/lang/Class;
    const-string v10, "create"

    invoke-virtual {v7, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1410
    .local v10, "create":Ljava/lang/reflect/Method;
    sget-object v12, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    sget v13, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-virtual {v10, v14, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v12, v13, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_53

    .line 1413
    .end local v7    # "PointerIconClass":Ljava/lang/Class;
    .end local v9    # "arg_types":[Ljava/lang/Class;
    .end local v10    # "create":Ljava/lang/reflect/Method;
    nop

    .line 1414
    sget v5, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    return v5

    .line 1411
    :catch_53
    move-exception v0

    move-object v6, v0

    .line 1412
    .local v6, "e":Ljava/lang/Exception;
    return v5
.end method

.method public static getContentView()Landroid/view/View;
    .registers 1

    .line 970
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 872
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentOrientation()I
    .registers 4

    .line 329
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    .local v0, "context":Landroid/content/Context;
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 332
    .local v1, "display":Landroid/view/Display;
    const/4 v2, 0x0

    .line 334
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_22

    goto :goto_21

    .line 348
    :pswitch_19
    const/4 v2, 0x2

    goto :goto_21

    .line 344
    :pswitch_1b
    const/4 v2, 0x4

    .line 345
    goto :goto_21

    .line 340
    :pswitch_1d
    const/4 v2, 0x1

    .line 341
    goto :goto_21

    .line 336
    :pswitch_1f
    const/4 v2, 0x3

    .line 337
    nop

    .line 352
    :goto_21
    return v2

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
    .end packed-switch
.end method

.method public static getDisplayDPI()Landroid/util/DisplayMetrics;
    .registers 1

    .line 937
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestEnvironmentVariables()Z
    .registers 9

    .line 945
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 946
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 947
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_1c

    .line 948
    return v0

    .line 950
    :cond_1c
    const-string v3, "SDL_ENV."

    .line 951
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 952
    .local v4, "trimLength":I
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 953
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 954
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 955
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 956
    .local v8, "value":Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/libsdl/app/SDLActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4e

    .line 958
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4b
    goto :goto_2a

    .line 960
    :cond_4c
    const/4 v0, 0x1

    return v0

    .line 961
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "trimLength":I
    :catch_4e
    move-exception v1

    .line 962
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method protected static getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;
    .registers 2

    .line 98
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    if-nez v0, :cond_27

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 100
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API26;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API26;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_27

    .line 102
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_20

    .line 103
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API24;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    goto :goto_27

    .line 105
    :cond_20
    new-instance v0, Lorg/libsdl/app/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    .line 109
    :cond_27
    :goto_27
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mMotionListener:Lorg/libsdl/app/SDLGenericMotionListener_API12;

    return-object v0
.end method

.method public static getNativeSurface()Landroid/view/Surface;
    .registers 1

    .line 1038
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-nez v0, :cond_6

    .line 1039
    const/4 v0, 0x0

    return-object v0

    .line 1041
    :cond_6
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->getNativeSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public static handleNativeExit()V
    .registers 1

    .line 531
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 532
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_c

    .line 533
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->finish()V

    .line 535
    :cond_c
    return-void
.end method

.method public static handleNativeState()V
    .registers 3

    .line 488
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_7

    .line 490
    return-void

    .line 494
    :cond_7
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_12

    .line 496
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 497
    return-void

    .line 501
    :cond_12
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_29

    .line 502
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativePause()V

    .line 503
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    if-eqz v0, :cond_24

    .line 504
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handlePause()V

    .line 505
    :cond_24
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 506
    return-void

    .line 510
    :cond_29
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    if-ne v0, v1, :cond_64

    .line 511
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    if-eqz v0, :cond_64

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    if-eqz v0, :cond_64

    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    if-eqz v0, :cond_64

    .line 512
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_58

    .line 517
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/libsdl/app/SDLMain;

    invoke-direct {v1}, Lorg/libsdl/app/SDLMain;-><init>()V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 518
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 519
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 522
    :cond_58
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeResume()V

    .line 523
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->handleResume()V

    .line 524
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 527
    :cond_64
    return-void
.end method

.method public static initialize()V
    .registers 2

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 175
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 176
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 177
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 178
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 179
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    .line 180
    const/4 v1, 0x0

    sput v1, Lorg/libsdl/app/SDLActivity;->mLastCursorID:I

    .line 181
    sput-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 182
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    .line 183
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 184
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 185
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 187
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 188
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mCurrentNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 189
    return-void
.end method

.method public static inputGetInputDeviceIds(I)[I
    .registers 8
    .param p0, "sources"    # I

    .line 1051
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 1052
    .local v0, "ids":[I
    array-length v1, v0

    new-array v1, v1, [I

    .line 1053
    .local v1, "filtered":[I
    const/4 v2, 0x0

    .line 1054
    .local v2, "used":I
    const/4 v3, 0x0

    .line 1054
    .local v3, "i":I
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_27

    .line 1055
    aget v4, v0, v3

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 1056
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_24

    .line 1057
    add-int/lit8 v5, v2, 0x1

    .line 1057
    .local v5, "used":I
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v6

    aput v6, v1, v2

    .line 1054
    .end local v2    # "used":I
    .end local v4    # "device":Landroid/view/InputDevice;
    move v2, v5

    .line 1054
    .end local v5    # "used":I
    .restart local v2    # "used":I
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1060
    .end local v3    # "i":I
    :cond_27
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    return-object v3
.end method

.method public static isAndroidTV()Z
    .registers 4

    .line 879
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 880
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    .line 881
    return v2

    .line 883
    :cond_15
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "MINIX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NEO-U1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 884
    return v2

    .line 886
    :cond_2a
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amlogic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X96-W"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 887
    return v2

    .line 889
    :cond_3f
    const/4 v1, 0x0

    return v1
.end method

.method public static isChromebook()Z
    .registers 2

    .line 913
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.chromium.arc.device_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeXMode()Z
    .registers 5

    .line 920
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_8

    .line 921
    return v1

    .line 924
    :cond_8
    :try_start_8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 925
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 926
    .local v2, "configClass":Ljava/lang/Class;
    const-string v3, "SEM_DESKTOP_MODE_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "semDesktopModeEnabled"

    .line 927
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_31

    if-ne v3, v4, :cond_30

    const/4 v1, 0x1

    nop

    .line 926
    :cond_30
    return v1

    .line 928
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "configClass":Ljava/lang/Class;
    :catch_31
    move-exception v0

    .line 929
    .local v0, "ignored":Ljava/lang/Exception;
    return v1
.end method

.method public static isScreenKeyboardShown()Z
    .registers 2

    .line 809
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 810
    return v1

    .line 813
    :cond_6
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    if-nez v0, :cond_b

    .line 814
    return v1

    .line 817
    :cond_b
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 818
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    return v1
.end method

.method public static isTablet()Z
    .registers 10

    .line 896
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 897
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 898
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 900
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    .line 901
    .local v2, "dWidthInches":D
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 903
    .local v4, "dHeightInches":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 906
    .local v6, "dDiagonal":D
    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_35

    const/4 v8, 0x1

    goto :goto_36

    :cond_35
    const/4 v8, 0x0

    :goto_36
    return v8
.end method

.method public static isTextInputEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 1025
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_e

    .line 1026
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1027
    return v1

    .line 1031
    :cond_e
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    return v1
.end method

.method public static manualBackButton()V
    .registers 1

    .line 447
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->pressBackButton()V

    .line 448
    return-void
.end method

.method public static native nativeGetHint(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeLowMemory()V
.end method

.method public static native nativePause()V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeResume()V
.end method

.method public static native nativeRunMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeClipboardChanged()V
.end method

.method public static native onNativeDropFile(Ljava/lang/String;)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeKeyboardFocusLost()V
.end method

.method public static native onNativeMouse(IIFFZ)V
.end method

.method public static native onNativeOrientationChanged(I)V
.end method

.method public static native onNativeResize(IIIIIF)V
.end method

.method public static native onNativeSurfaceChanged()V
.end method

.method public static native onNativeSurfaceDestroyed()V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static openAPKExpansionInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 14
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    sget-object v0, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_82

    .line 1094
    const-string v0, "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "mainHint":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v0, :cond_10

    .line 1096
    return-object v3

    .line 1098
    :cond_10
    const-string v4, "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"

    invoke-static {v4}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, "patchHint":Ljava/lang/String;
    if-nez v4, :cond_19

    .line 1100
    return-object v3

    .line 1106
    :cond_19
    :try_start_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1107
    .local v5, "mainVersion":Ljava/lang/Integer;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_21} :catch_76

    .line 1111
    .local v6, "patchVersion":Ljava/lang/Integer;
    nop

    .line 1110
    nop

    .line 1116
    :try_start_23
    const-string v7, "com.android.vending.expansion.zipfile.APKExpansionSupport"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getAPKExpansionZipFile"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 1117
    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    .line 1118
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v5, v8, v1

    aput-object v6, v8, v12

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    .line 1120
    sget-object v7, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getInputStream"

    new-array v9, v1, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    .line 1121
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_65} :catch_66

    .line 1127
    goto :goto_82

    .line 1122
    :catch_66
    move-exception v1

    .line 1123
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    sput-object v3, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    .line 1125
    sput-object v3, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;

    .line 1126
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not access APK expansion support library"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1108
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "mainVersion":Ljava/lang/Integer;
    .end local v6    # "patchVersion":Ljava/lang/Integer;
    :catch_76
    move-exception v1

    .line 1109
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1110
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No valid file versions set for APK expansion files"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1133
    .end local v0    # "mainHint":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "patchHint":Ljava/lang/String;
    :cond_82
    :goto_82
    :try_start_82
    sget-object v0, Lorg/libsdl/app/SDLActivity;->expansionFileMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lorg/libsdl/app/SDLActivity;->expansionFile:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_90} :catch_9d

    .line 1138
    .local v0, "fileStream":Ljava/io/InputStream;
    nop

    .line 1137
    nop

    .line 1140
    if-nez v0, :cond_9c

    .line 1142
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find path in APK expansion file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1145
    :cond_9c
    return-object v0

    .line 1134
    .end local v0    # "fileStream":Ljava/io/InputStream;
    :catch_9d
    move-exception v0

    .line 1136
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1137
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not open stream from APK expansion file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sendMessage(II)Z
    .registers 4
    .param p0, "command"    # I
    .param p1, "param"    # I

    .line 862
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v0, :cond_6

    .line 863
    const/4 v0, 0x0

    return v0

    .line 865
    :cond_6
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setActivityTitle(Ljava/lang/String;)Z
    .registers 3
    .param p0, "title"    # Ljava/lang/String;

    .line 741
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setCustomCursor(I)Z
    .registers 9
    .param p0, "cursorID"    # I

    .line 1423
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.view.PointerIcon"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1424
    .local v1, "PointerIconClass":Ljava/lang/Class;
    const-class v2, Lorg/libsdl/app/SDLSurface;

    const-string v3, "setPointerIcon"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1425
    .local v2, "setPointerIcon":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lorg/libsdl/app/SDLActivity;->mCursors:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    .line 1428
    .end local v1    # "PointerIconClass":Ljava/lang/Class;
    .end local v2    # "setPointerIcon":Ljava/lang/reflect/Method;
    nop

    .line 1429
    return v4

    .line 1426
    :catch_29
    move-exception v1

    .line 1427
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static setOrientation(IIZLjava/lang/String;)V
    .registers 5
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "resizable"    # Z
    .param p3, "hint"    # Ljava/lang/String;

    .line 759
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-eqz v0, :cond_9

    .line 760
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity;->setOrientationBis(IIZLjava/lang/String;)V

    .line 762
    :cond_9
    return-void
.end method

.method public static setRelativeMouseEnabled(Z)Z
    .registers 2
    .param p0, "enabled"    # Z

    .line 851
    if-eqz p0, :cond_a

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->supportsRelativeMouse()Z

    move-result v0

    if-nez v0, :cond_a

    .line 852
    const/4 v0, 0x0

    return v0

    .line 855
    :cond_a
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->setRelativeMouseEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setSystemCursor(I)Z
    .registers 13
    .param p0, "cursorID"    # I

    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, "cursor_type":I
    packed-switch p0, :pswitch_data_6e

    goto :goto_29

    .line 1472
    :pswitch_5
    const/16 v0, 0x3ea

    goto :goto_29

    .line 1469
    :pswitch_8
    const/16 v0, 0x3f4

    .line 1470
    goto :goto_29

    .line 1466
    :pswitch_b
    const/16 v0, 0x3fc

    .line 1467
    goto :goto_29

    .line 1463
    :pswitch_e
    const/16 v0, 0x3f7

    .line 1464
    goto :goto_29

    .line 1460
    :pswitch_11
    const/16 v0, 0x3f6

    .line 1461
    goto :goto_29

    .line 1457
    :pswitch_14
    const/16 v0, 0x3f8

    .line 1458
    goto :goto_29

    .line 1454
    :pswitch_17
    const/16 v0, 0x3f9

    .line 1455
    goto :goto_29

    .line 1451
    :pswitch_1a
    const/16 v0, 0x3ec

    .line 1452
    goto :goto_29

    .line 1448
    :pswitch_1d
    const/16 v0, 0x3ef

    .line 1449
    goto :goto_29

    .line 1445
    :pswitch_20
    const/16 v0, 0x3ec

    .line 1446
    goto :goto_29

    .line 1442
    :pswitch_23
    const/16 v0, 0x3f0

    .line 1443
    goto :goto_29

    .line 1439
    :pswitch_26
    const/16 v0, 0x3e8

    .line 1440
    nop

    .line 1477
    :goto_29
    const/4 v1, 0x0

    :try_start_2a
    const-string v2, "android.view.PointerIcon"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1478
    .local v2, "PointerIconClass":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1479
    .local v4, "arg_types":[Ljava/lang/Class;
    const-string v5, "getSystemIcon"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1480
    .local v5, "getSystemIcon":Ljava/lang/reflect/Method;
    const-class v7, Lorg/libsdl/app/SDLSurface;

    const-string v8, "setPointerIcon"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v2, v9, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1481
    .local v7, "setPointerIcon":Ljava/lang/reflect/Method;
    sget-object v8, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v11

    aput-object v11, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v6

    invoke-virtual {v5, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v9, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6a} :catch_6c

    .line 1484
    .end local v2    # "PointerIconClass":Ljava/lang/Class;
    .end local v4    # "arg_types":[Ljava/lang/Class;
    .end local v5    # "getSystemIcon":Ljava/lang/reflect/Method;
    .end local v7    # "setPointerIcon":Ljava/lang/reflect/Method;
    nop

    .line 1485
    return v6

    .line 1482
    :catch_6c
    move-exception v2

    .line 1483
    .local v2, "e":Ljava/lang/Exception;
    return v1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setWindowStyle(Z)V
    .registers 4
    .param p0, "fullscreen"    # Z

    .line 749
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    .line 750
    return-void
.end method

.method public static showTextInput(IIII)Z
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 1019
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/libsdl/app/SDLActivity$ShowTextInputTask;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static supportsRelativeMouse()Z
    .registers 3

    .line 828
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isChromebook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 829
    return v1

    .line 839
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_15

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 840
    return v1

    .line 843
    :cond_15
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->supportsRelativeMouse()Z

    move-result v0

    return v0
.end method

.method public static triggerAppConfirmedActive()V
    .registers 1

    .line 1067
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->appConfirmedActive()V

    .line 1068
    return-void
.end method


# virtual methods
.method public appConfirmedActive()V
    .registers 1

    .line 1075
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 468
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 469
    return v1

    .line 472
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 474
    .local v0, "keyCode":I
    const/16 v2, 0x19

    if-eq v0, v2, :cond_24

    const/16 v2, 0x18

    if-eq v0, v2, :cond_24

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_24

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_24

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_1f

    goto :goto_24

    .line 482
    :cond_1f
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 480
    :cond_24
    :goto_24
    return v1
.end method

.method protected finishLoad()V
    .registers 7

    .line 209
    const-string v0, ""

    .line 211
    .local v0, "errorMsgBrokenLib":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->loadLibraries()V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_6} :catch_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 220
    :goto_6
    goto :goto_29

    .line 216
    :catch_7
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 219
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_29

    .line 212
    :catch_18
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sput-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 215
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 215
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_6

    .line 222
    :goto_29
    sget-boolean v1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    .line 224
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred while trying to start the application. Please try again and/or reinstall."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "line.separator"

    .line 227
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "line.separator"

    .line 228
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 230
    const-string v3, "SDL Error"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    const-string v3, "Exit"

    new-instance v4, Lorg/libsdl/app/SDLActivity$1;

    invoke-direct {v4, p0}, Lorg/libsdl/app/SDLActivity$1;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 242
    return-void

    .line 246
    .end local v1    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    :cond_7a
    invoke-static {}, Lorg/libsdl/app/SDL;->setupJNI()V

    .line 249
    invoke-static {}, Lorg/libsdl/app/SDL;->initialize()V

    .line 252
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 253
    invoke-static {p0}, Lorg/libsdl/app/SDL;->setContext(Landroid/content/Context;)V

    .line 255
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_93

    .line 256
    new-instance v1, Lorg/libsdl/app/SDLClipboardHandler_API11;

    invoke-direct {v1}, Lorg/libsdl/app/SDLClipboardHandler_API11;-><init>()V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    goto :goto_9a

    .line 259
    :cond_93
    new-instance v1, Lorg/libsdl/app/SDLClipboardHandler_Old;

    invoke-direct {v1}, Lorg/libsdl/app/SDLClipboardHandler_Old;-><init>()V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mClipboardHandler:Lorg/libsdl/app/SDLClipboardHandler;

    .line 262
    :goto_9a
    invoke-static {p0}, Lorg/libsdl/app/HIDDeviceManager;->acquire(Landroid/content/Context;)Lorg/libsdl/app/HIDDeviceManager;

    move-result-object v1

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 265
    new-instance v1, Lorg/libsdl/app/SDLSurface;

    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/libsdl/app/SDLSurface;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 267
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 268
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getCurrentOrientation()I

    move-result v1

    sput v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 272
    sget v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 274
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLActivity;->setContentView(Landroid/view/View;)V

    .line 276
    invoke-static {v2}, Lorg/libsdl/app/SDLActivity;->setWindowStyle(Z)V

    .line 278
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 281
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 282
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_106

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_106

    .line 283
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "filename":Ljava/lang/String;
    if-eqz v2, :cond_106

    .line 285
    const-string v3, "SDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {v2}, Lorg/libsdl/app/SDLActivity;->onNativeDropFile(Ljava/lang/String;)V

    .line 289
    .end local v2    # "filename":Ljava/lang/String;
    :cond_106
    return-void
.end method

.method protected getArguments()[Ljava/lang/String;
    .registers 2

    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getLibraries()[Ljava/lang/String;
    .registers 3

    .line 144
    const-string v0, "SDL2"

    const-string v1, "main"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainFunction()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "SDL_main"

    return-object v0
.end method

.method protected getMainSharedObject()Ljava/lang/String;
    .registers 5

    .line 118
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "libraries":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_25

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "library":Ljava/lang/String;
    goto :goto_27

    .line 122
    .end local v1    # "library":Ljava/lang/String;
    :cond_25
    const-string v1, "libmain.so"

    .line 124
    .restart local v1    # "library":Ljava/lang/String;
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadLibraries()V
    .registers 5

    .line 156
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 157
    .local v3, "lib":Ljava/lang/String;
    invoke-static {v3}, Lorg/libsdl/app/SDL;->loadLibrary(Ljava/lang/String;)V

    .line 156
    .end local v3    # "lib":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 159
    :cond_10
    return-void
.end method

.method public messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
    .registers 13
    .param p1, "flags"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "buttonFlags"    # [I
    .param p5, "buttonIds"    # [I
    .param p6, "buttonTexts"    # [Ljava/lang/String;
    .param p7, "colors"    # [I

    .line 1175
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 1179
    array-length v0, p4

    array-length v3, p5

    if-eq v0, v3, :cond_f

    array-length v0, p5

    array-length v3, p6

    if-eq v0, v3, :cond_f

    .line 1180
    return v2

    .line 1185
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1186
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "flags"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string v3, "title"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v3, "message"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v3, "buttonFlags"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1190
    const-string v3, "buttonIds"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1191
    const-string v3, "buttonTexts"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1192
    const-string v3, "colors"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1196
    new-instance v3, Lorg/libsdl/app/SDLActivity$3;

    invoke-direct {v3, p0, v0}, Lorg/libsdl/app/SDLActivity$3;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1205
    iget-object v3, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    monitor-enter v3

    .line 1207
    :try_start_42
    iget-object v4, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_47} :catch_50
    .catchall {:try_start_42 .. :try_end_47} :catchall_4e

    .line 1211
    nop

    .line 1212
    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4e

    .line 1216
    iget-object v2, p0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    aget v1, v2, v1

    return v1

    .line 1212
    :catchall_4e
    move-exception v1

    goto :goto_56

    .line 1208
    :catch_50
    move-exception v1

    .line 1209
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_51
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1210
    monitor-exit v3

    return v2

    .line 1212
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :goto_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4e

    throw v1
.end method

.method public onBackPressed()V
    .registers 3

    .line 435
    const-string v0, "SDL_ANDROID_TRAP_BACK_BUTTON"

    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "trapBack":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 438
    return-void

    .line 442
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 443
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 194
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v0, "SDL"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 201
    sput-object p0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 202
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 24
    .param p1, "ignore"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 1226
    move-object/from16 v1, p2

    const-string v2, "colors"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 1232
    .local v2, "colors":[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    .line 1233
    const/4 v5, -0x1

    .line 1234
    .local v5, "i":I
    add-int/2addr v5, v4

    aget v6, v2, v5

    .line 1235
    .local v6, "backgroundColor":I
    add-int/2addr v5, v4

    aget v7, v2, v5

    .line 1236
    .local v7, "textColor":I
    add-int/2addr v5, v4

    aget v8, v2, v5

    .line 1237
    .local v8, "buttonBorderColor":I
    add-int/2addr v5, v4

    aget v9, v2, v5

    .line 1238
    .local v9, "buttonBackgroundColor":I
    add-int/2addr v5, v4

    aget v5, v2, v5

    .line 1239
    .local v5, "buttonSelectedColor":I
    goto :goto_24

    .line 1240
    .end local v5    # "buttonSelectedColor":I
    .end local v6    # "backgroundColor":I
    .end local v7    # "textColor":I
    .end local v8    # "buttonBorderColor":I
    .end local v9    # "buttonBackgroundColor":I
    :cond_1f
    const/4 v6, 0x0

    .line 1241
    .restart local v6    # "backgroundColor":I
    const/4 v7, 0x0

    .line 1242
    .restart local v7    # "textColor":I
    const/4 v8, 0x0

    .line 1243
    .restart local v8    # "buttonBorderColor":I
    const/4 v9, 0x0

    .line 1244
    .restart local v9    # "buttonBackgroundColor":I
    const/4 v5, 0x0

    .line 1249
    .restart local v5    # "buttonSelectedColor":I
    :goto_24
    new-instance v10, Landroid/app/Dialog;

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1250
    .local v10, "dialog":Landroid/app/Dialog;
    const-string v11, "title"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1251
    invoke-virtual {v10, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1252
    new-instance v11, Lorg/libsdl/app/SDLActivity$4;

    invoke-direct {v11, v0}, Lorg/libsdl/app/SDLActivity$4;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1263
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1264
    .local v11, "message":Landroid/widget/TextView;
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1265
    const-string v13, "message"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    if-eqz v7, :cond_55

    .line 1267
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1272
    :cond_55
    const-string v13, "buttonFlags"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    .line 1273
    .local v13, "buttonFlags":[I
    const-string v14, "buttonIds"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    .line 1274
    .local v14, "buttonIds":[I
    const-string v15, "buttonTexts"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1276
    .local v15, "buttonTexts":[Ljava/lang/String;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1278
    .local v4, "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1279
    .local v12, "buttons":Landroid/widget/LinearLayout;
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1280
    const/16 v3, 0x11

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1281
    const/16 v17, 0x0

    .line 1281
    .local v17, "i":I
    :goto_7b
    move/from16 v3, v17

    .line 1281
    .end local v17    # "i":I
    .local v3, "i":I
    array-length v1, v15

    if-ge v3, v1, :cond_de

    .line 1282
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1283
    .local v1, "button":Landroid/widget/Button;
    move-object/from16 v18, v2

    aget v2, v14, v3

    .line 1284
    .local v2, "id":I
    .local v18, "colors":[I
    move/from16 v19, v5

    new-instance v5, Lorg/libsdl/app/SDLActivity$5;

    .line 1284
    .end local v5    # "buttonSelectedColor":I
    .local v19, "buttonSelectedColor":I
    invoke-direct {v5, v0, v2, v10}, Lorg/libsdl/app/SDLActivity$5;-><init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    aget v5, v13, v3

    if-eqz v5, :cond_af

    .line 1293
    aget v5, v13, v3

    const/16 v16, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a4

    .line 1294
    const/16 v5, 0x42

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1296
    :cond_a4
    aget v5, v13, v3

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_af

    .line 1297
    const/16 v5, 0x6f

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1300
    :cond_af
    aget-object v5, v15, v3

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    if-eqz v7, :cond_b9

    .line 1302
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 1304
    :cond_b9
    nop

    .line 1307
    if-eqz v9, :cond_d0

    .line 1308
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1309
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_c8

    .line 1311
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1317
    move/from16 v20, v2

    goto :goto_d2

    .line 1314
    :cond_c8
    move/from16 v20, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 1314
    .end local v2    # "id":I
    .local v20, "id":I
    invoke-virtual {v5, v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1314
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_d2

    .line 1317
    .end local v20    # "id":I
    .restart local v2    # "id":I
    :cond_d0
    move/from16 v20, v2

    .line 1320
    .end local v2    # "id":I
    .restart local v20    # "id":I
    :goto_d2
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1281
    .end local v1    # "button":Landroid/widget/Button;
    .end local v20    # "id":I
    add-int/lit8 v17, v3, 0x1

    .line 1281
    .end local v3    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v2, v18

    move/from16 v5, v19

    move-object/from16 v1, p2

    goto :goto_7b

    .line 1325
    .end local v17    # "i":I
    .end local v18    # "colors":[I
    .end local v19    # "buttonSelectedColor":I
    .local v2, "colors":[I
    .local v5, "buttonSelectedColor":I
    :cond_de
    move-object/from16 v18, v2

    move/from16 v19, v5

    .line 1325
    .end local v2    # "colors":[I
    .end local v5    # "buttonSelectedColor":I
    .restart local v18    # "colors":[I
    .restart local v19    # "buttonSelectedColor":I
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1326
    .local v1, "content":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1327
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1328
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1329
    if-eqz v6, :cond_f6

    .line 1330
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1335
    :cond_f6
    invoke-virtual {v10, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1336
    new-instance v2, Lorg/libsdl/app/SDLActivity$6;

    invoke-direct {v2, v0, v4}, Lorg/libsdl/app/SDLActivity$6;-><init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1350
    return-object v10
.end method

.method protected onDestroy()V
    .registers 6

    .line 389
    const-string v0, "SDL"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 392
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-static {v0}, Lorg/libsdl/app/HIDDeviceManager;->release(Lorg/libsdl/app/HIDDeviceManager;)V

    .line 393
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 396
    :cond_13
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_1e

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 399
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 400
    return-void

    .line 403
    :cond_1e
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 404
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 407
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mExitCalledFromJava:Z

    .line 408
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeQuit()V

    .line 411
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4e

    .line 413
    :try_start_2f
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    .line 416
    goto :goto_4c

    .line 414
    :catch_35
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem stopping thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    sput-object v1, Lorg/libsdl/app/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 422
    :cond_4e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 425
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 426
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .line 377
    const-string v0, "SDL"

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 380
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_f

    .line 381
    return-void

    .line 384
    :cond_f
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeLowMemory()V

    .line 385
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 294
    const-string v0, "SDL"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 296
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 297
    const/4 v0, 0x0

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 299
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_16

    .line 300
    return-void

    .line 303
    :cond_16
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v0, :cond_20

    .line 304
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/libsdl/app/HIDDeviceManager;->setFrozen(Z)V

    .line 307
    :cond_20
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 308
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 312
    const-string v0, "SDL"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 314
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsResumedCalled:Z

    .line 317
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_16

    .line 318
    return-void

    .line 321
    :cond_16
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    if-eqz v0, :cond_20

    .line 322
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mHIDDeviceManager:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/libsdl/app/HIDDeviceManager;->setFrozen(Z)V

    .line 325
    :cond_20
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 326
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 1369
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    if-eqz v0, :cond_26

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_c

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_26

    .line 1370
    :cond_c
    invoke-virtual {p0}, Lorg/libsdl/app/SDLActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1371
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_26

    .line 1372
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1373
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->rehideSystemUi:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1376
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_26
    return-void
.end method

.method protected onUnhandledMessage(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "command"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .line 357
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 358
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    if-eqz v0, :cond_1e

    .line 361
    return-void

    .line 364
    :cond_1e
    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mHasFocus:Z

    .line 365
    if-eqz p1, :cond_2e

    .line 366
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 367
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->reclaimRelativeMouseModeIfNeeded()V

    goto :goto_32

    .line 369
    :cond_2e
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 372
    :goto_32
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 373
    return-void
.end method

.method public pressBackButton()V
    .registers 2

    .line 452
    new-instance v0, Lorg/libsdl/app/SDLActivity$2;

    invoke-direct {v0, p0}, Lorg/libsdl/app/SDLActivity$2;-><init>(Lorg/libsdl/app/SDLActivity;)V

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method protected sendCommand(ILjava/lang/Object;)Z
    .registers 12
    .param p1, "command"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 652
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 653
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 654
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 657
    .local v1, "result":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_76

    const/4 v2, 0x2

    if-ne p1, v2, :cond_76

    .line 661
    const/4 v2, 0x0

    .line 663
    .local v2, "bShouldWait":Z
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_5b

    .line 665
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 666
    .local v3, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 667
    .local v4, "realMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 669
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v6, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v6}, Lorg/libsdl/app/SDLSurface;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4a

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v6, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 670
    invoke-virtual {v6}, Lorg/libsdl/app/SDLSurface;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_4a

    const/4 v5, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x0

    .line 672
    .local v5, "bFullscreenLayout":Z
    :goto_4b
    move-object v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_5a

    .line 678
    if-nez v5, :cond_58

    const/4 v7, 0x1

    nop

    :cond_58
    move v2, v7

    goto :goto_5b

    .line 684
    :cond_5a
    move v2, v5

    .line 688
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "realMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "bFullscreenLayout":Z
    :cond_5b
    :goto_5b
    if-eqz v2, :cond_76

    .line 698
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    monitor-enter v3

    .line 700
    :try_start_62
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_6b} :catch_6e
    .catchall {:try_start_62 .. :try_end_6b} :catchall_6c

    .line 704
    goto :goto_72

    .line 705
    :catchall_6c
    move-exception v4

    goto :goto_74

    .line 702
    :catch_6e
    move-exception v4

    .line 703
    .local v4, "ie":Ljava/lang/InterruptedException;
    :try_start_6f
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 705
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    :goto_72
    monitor-exit v3

    goto :goto_76

    :goto_74
    monitor-exit v3
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_6c

    throw v4

    .line 709
    .end local v2    # "bShouldWait":Z
    :cond_76
    :goto_76
    return v1
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "resizable"    # Z
    .param p4, "hint"    # Ljava/lang/String;

    .line 769
    const/4 v0, -0x1

    .line 771
    .local v0, "orientation":I
    const-string v1, "LandscapeRight"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "LandscapeLeft"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 772
    const/4 v0, 0x6

    goto :goto_4e

    .line 773
    :cond_13
    const-string v1, "LandscapeRight"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 774
    const/4 v0, 0x0

    goto :goto_4e

    .line 775
    :cond_1d
    const-string v1, "LandscapeLeft"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 776
    const/16 v0, 0x8

    goto :goto_4e

    .line 777
    :cond_28
    const-string v1, "Portrait"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "PortraitUpsideDown"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 778
    const/4 v0, 0x7

    goto :goto_4e

    .line 779
    :cond_3a
    const-string v1, "Portrait"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 780
    const/4 v0, 0x1

    goto :goto_4e

    .line 781
    :cond_44
    const-string v1, "PortraitUpsideDown"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 782
    const/16 v0, 0x9

    .line 786
    :cond_4e
    :goto_4e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_59

    .line 787
    if-eqz p3, :cond_54

    goto :goto_59

    .line 790
    :cond_54
    if-le p1, p2, :cond_58

    .line 791
    const/4 v0, 0x6

    goto :goto_59

    .line 793
    :cond_58
    const/4 v0, 0x7

    .line 798
    :cond_59
    :goto_59
    const-string v2, "SDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOrientation() orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " resizable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-eq v0, v1, :cond_96

    .line 800
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v1, v0}, Lorg/libsdl/app/SDLActivity;->setRequestedOrientation(I)V

    .line 802
    :cond_96
    return-void
.end method

.method public superOnBackPressed()V
    .registers 1

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 463
    return-void
.end method
