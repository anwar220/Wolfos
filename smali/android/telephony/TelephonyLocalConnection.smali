# classes3.dex

.class public Landroid/telephony/TelephonyLocalConnection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInstance()V
    .registers 2

    sget-object v0, Landroid/telephony/TelephonyLocalConnection;->sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection impl is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCallComposerServerUrlForHandle(ILjava/util/UUID;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/telephony/TelephonyLocalConnection;->checkInstance()V

    sget-object v0, Landroid/telephony/TelephonyLocalConnection;->sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    invoke-interface {v0, p0, p1}, Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;->getCallComposerServerUrlForHandle(ILjava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;)V
    .registers 1

    sput-object p0, Landroid/telephony/TelephonyLocalConnection;->sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    return-void
.end method
