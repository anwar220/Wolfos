# classes3.dex

.class public Landroid/telephony/MmsManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/MmsManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public downloadMultimediaMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 20

    :try_start_0
    const-string/jumbo v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_29

    move-object v11, p0

    :try_start_13
    iget-object v1, v11, Landroid/telephony/MmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    goto :goto_2b

    :catch_29
    move-exception v0

    move-object v11, p0

    :goto_2b
    return-void
.end method

.method public sendMultimediaMessage(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 20

    :try_start_0
    const-string/jumbo v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_29

    move-object v11, p0

    :try_start_13
    iget-object v1, v11, Landroid/telephony/MmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    goto :goto_2b

    :catch_29
    move-exception v0

    move-object v11, p0

    :goto_2b
    return-void
.end method
