# classes3.dex

.class public final Landroid/telephony/AccessNetworkConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$NgranBands;,
        Landroid/telephony/AccessNetworkConstants$CdmaBands;,
        Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$EutranBand;,
        Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$UtranBand;,
        Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$GeranBand;,
        Landroid/telephony/AccessNetworkConstants$AccessNetworkType;,
        Landroid/telephony/AccessNetworkConstants$RadioAccessNetworkType;,
        Landroid/telephony/AccessNetworkConstants$TransportType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TRANSPORT_TYPE_INVALID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TRANSPORT_TYPE_WLAN:I = 0x2

.field public static final TRANSPORT_TYPE_WWAN:I = 0x1


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/AccessNetworkConstants;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/telephony/AccessNetworkConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/AccessNetworkConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transportTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    :pswitch_3  #0x0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2
    const-string v0, "WLAN"

    return-object v0

    :pswitch_b  #0x1
    const-string v0, "WWAN"

    return-object v0

    :pswitch_e  #0xffffffff
    const-string v0, "INVALID"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_e  #ffffffff
        :pswitch_3  #00000000
        :pswitch_b  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method
