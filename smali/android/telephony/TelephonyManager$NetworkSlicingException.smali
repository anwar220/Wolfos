# classes3.dex

.class public Landroid/telephony/TelephonyManager$NetworkSlicingException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSlicingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$NetworkSlicingException$NetworkSlicingError;
    }
.end annotation


# static fields
.field public static final ERROR_MODEM_ERROR:I = 0x2

.field public static final ERROR_TIMEOUT:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyManager$NetworkSlicingException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/telephony/TelephonyManager$NetworkSlicingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_e

    const-string v0, "UNDEFINED"

    return-object v0

    :pswitch_8  #0x2
    const-string v0, "ERROR_MODEM_ERROR"

    return-object v0

    :pswitch_b  #0x1
    const-string v0, "ERROR_TIMEOUT"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method
