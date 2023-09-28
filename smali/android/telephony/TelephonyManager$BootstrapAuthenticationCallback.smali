# classes3.dex

.class public Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapAuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailure(I)V
    .registers 2

    return-void
.end method

.method public onKeysAvailable([BLjava/lang/String;)V
    .registers 3

    return-void
.end method
