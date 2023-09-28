# classes3.dex

.class public Landroid/telephony/TelephonyManager$TimeoutException;
.super Landroid/telephony/TelephonyManager$NetworkSlicingException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeoutException"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;I)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/TelephonyManager$TimeoutException;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Landroid/telephony/TelephonyManager$NetworkSlicingException;-><init>(I)V

    return-void
.end method
