.class public Lorg/kivy/android/PythonService;
.super Landroid/app/Service;
.source "PythonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static mService:Lorg/kivy/android/PythonService;


# instance fields
.field private androidArgument:Ljava/lang/String;

.field private androidPrivate:Ljava/lang/String;

.field private autoRestartService:Z

.field private pythonHome:Ljava/lang/String;

.field private pythonName:Ljava/lang/String;

.field private pythonPath:Ljava/lang/String;

.field private pythonServiceArgument:Ljava/lang/String;

.field private pythonThread:Ljava/lang/Thread;

.field private serviceEntrypoint:Ljava/lang/String;

.field private startIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lorg/kivy/android/PythonService;->mService:Lorg/kivy/android/PythonService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 39
    iput-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    return-void
.end method

.method public static native nativeStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method protected doStartForeground(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 95
    move-object/from16 v2, p1

    const-string v3, "serviceTitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "serviceTitle":Ljava/lang/String;
    const-string v4, "serviceDescription"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "serviceDescription":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 99
    .local v5, "context":Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/kivy/android/PythonActivity;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v6, "contextIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v5, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 103
    .local v8, "pIntent":Landroid/app/PendingIntent;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_69

    .line 104
    new-instance v9, Landroid/app/Notification;

    .line 105
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v9, v10, v3, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 108
    .local v9, "notification":Landroid/app/Notification;
    :try_start_37
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "setLatestEventInfo"

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v7

    const-class v14, Ljava/lang/CharSequence;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-class v14, Ljava/lang/CharSequence;

    const/16 v16, 0x2

    aput-object v14, v13, v16

    const-class v14, Landroid/app/PendingIntent;

    const/16 v17, 0x3

    aput-object v14, v13, v17

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 111
    .local v10, "func":Ljava/lang/reflect/Method;
    new-array v11, v12, [Ljava/lang/Object;

    aput-object v5, v11, v7

    aput-object v3, v11, v15

    aput-object v4, v11, v16

    aput-object v8, v11, v17

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_66} :catch_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_66} :catch_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_66} :catch_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_66} :catch_67

    .line 111
    .end local v10    # "func":Ljava/lang/reflect/Method;
    goto :goto_68

    .line 112
    :catch_67
    move-exception v0

    .line 114
    :goto_68
    goto :goto_a1

    .line 118
    .end local v9    # "notification":Landroid/app/Notification;
    :cond_69
    const-string v9, "org.kivy.p4a"

    .line 119
    .local v9, "NOTIFICATION_CHANNEL_ID":Ljava/lang/String;
    const-string v10, "Background Service"

    .line 120
    .local v10, "channelName":Ljava/lang/String;
    new-instance v11, Landroid/app/NotificationChannel;

    invoke-direct {v11, v9, v10, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 123
    .local v11, "chan":Landroid/app/NotificationChannel;
    const v12, -0xffff01

    invoke-virtual {v11, v12}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 124
    invoke-virtual {v11, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 125
    const-string v7, "notification"

    invoke-virtual {v1, v7}, Lorg/kivy/android/PythonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 126
    .local v7, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v7, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 128
    new-instance v12, Landroid/app/Notification$Builder;

    invoke-direct {v12, v5, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .local v12, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 130
    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 131
    invoke-virtual {v12, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 132
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 133
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 133
    .end local v7    # "manager":Landroid/app/NotificationManager;
    .end local v10    # "channelName":Ljava/lang/String;
    .end local v11    # "chan":Landroid/app/NotificationChannel;
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .local v9, "notification":Landroid/app/Notification;
    :goto_a1
    move-object v7, v9

    .line 135
    .end local v9    # "notification":Landroid/app/Notification;
    .local v7, "notification":Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getServiceId()I

    move-result v9

    invoke-virtual {v1, v9, v7}, Lorg/kivy/android/PythonService;->startForeground(ILandroid/app/Notification;)V

    .line 136
    return-void
.end method

.method protected getServiceId()I
    .registers 2

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 140
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 142
    iget-boolean v0, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1a

    .line 143
    const-string v0, "python service"

    const-string v1, "service restart requested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    :cond_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 63
    iget-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 64
    const-string v0, "python service"

    const-string v1, "service exists, do not start again"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x2

    return v0

    .line 68
    :cond_d
    iput-object p1, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "androidPrivate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->androidPrivate:Ljava/lang/String;

    .line 71
    const-string v1, "androidArgument"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->androidArgument:Ljava/lang/String;

    .line 72
    const-string v1, "serviceEntrypoint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->serviceEntrypoint:Ljava/lang/String;

    .line 73
    const-string v1, "pythonName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->pythonName:Ljava/lang/String;

    .line 74
    const-string v1, "pythonHome"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->pythonHome:Ljava/lang/String;

    .line 75
    const-string v1, "pythonPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->pythonPath:Ljava/lang/String;

    .line 76
    const-string v1, "serviceStartAsForeground"

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    .local v1, "serviceStartAsForeground":Z
    const-string v2, "pythonServiceArgument"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kivy/android/PythonService;->pythonServiceArgument:Ljava/lang/String;

    .line 80
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 81
    iget-object v2, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 83
    if-eqz v1, :cond_68

    .line 84
    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonService;->doStartForeground(Landroid/os/Bundle;)V

    .line 87
    :cond_68
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->startType()I

    move-result v2

    return v2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 155
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->stopSelf()V

    .line 157
    return-void
.end method

.method public run()V
    .registers 12

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "app_root":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "app_root_file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .line 164
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {v1, v2}, Lorg/kivy/android/PythonUtil;->loadLibraries(Ljava/io/File;Ljava/io/File;)V

    .line 165
    sput-object p0, Lorg/kivy/android/PythonService;->mService:Lorg/kivy/android/PythonService;

    .line 166
    iget-object v4, p0, Lorg/kivy/android/PythonService;->androidPrivate:Ljava/lang/String;

    iget-object v5, p0, Lorg/kivy/android/PythonService;->androidArgument:Ljava/lang/String;

    iget-object v6, p0, Lorg/kivy/android/PythonService;->serviceEntrypoint:Ljava/lang/String;

    iget-object v7, p0, Lorg/kivy/android/PythonService;->pythonName:Ljava/lang/String;

    iget-object v8, p0, Lorg/kivy/android/PythonService;->pythonHome:Ljava/lang/String;

    iget-object v9, p0, Lorg/kivy/android/PythonService;->pythonPath:Ljava/lang/String;

    iget-object v10, p0, Lorg/kivy/android/PythonService;->pythonServiceArgument:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lorg/kivy/android/PythonService;->nativeStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->stopSelf()V

    .line 172
    return-void
.end method

.method public setAutoRestartService(Z)V
    .registers 2
    .param p1, "restart"    # Z

    .line 44
    iput-boolean p1, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    .line 45
    return-void
.end method

.method public startType()I
    .registers 2

    .line 48
    const/4 v0, 0x2

    return v0
.end method
