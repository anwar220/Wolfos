# classes2.dex

.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$PartialReceptionFlag;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Bandwidth;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Mode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final BANDWIDTH_6MHZ:I = 0x8

.field public static final BANDWIDTH_7MHZ:I = 0x4

.field public static final BANDWIDTH_8MHZ:I = 0x2

.field public static final BANDWIDTH_AUTO:I = 0x1

.field public static final BANDWIDTH_UNDEFINED:I = 0x0

.field public static final MODE_1:I = 0x2

.field public static final MODE_2:I = 0x4

.field public static final MODE_3:I = 0x8

.field public static final MODE_AUTO:I = 0x1

.field public static final MODE_UNDEFINED:I = 0x0

.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_16QAM:I = 0x8

.field public static final MODULATION_MOD_64QAM:I = 0x10

.field public static final MODULATION_MOD_DQPSK:I = 0x2

.field public static final MODULATION_MOD_QPSK:I = 0x4

.field public static final MODULATION_UNDEFINED:I = 0x0

.field public static final PARTIAL_RECEPTION_FLAG_FALSE:I = 0x2

.field public static final PARTIAL_RECEPTION_FLAG_TRUE:I = 0x4

.field public static final PARTIAL_RECEPTION_FLAG_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IsdbtFrontendSettings"

.field public static final TIME_INTERLEAVE_MODE_1_0:I = 0x2

.field public static final TIME_INTERLEAVE_MODE_1_16:I = 0x10

.field public static final TIME_INTERLEAVE_MODE_1_4:I = 0x4

.field public static final TIME_INTERLEAVE_MODE_1_8:I = 0x8

.field public static final TIME_INTERLEAVE_MODE_2_0:I = 0x20

.field public static final TIME_INTERLEAVE_MODE_2_2:I = 0x40

.field public static final TIME_INTERLEAVE_MODE_2_4:I = 0x80

.field public static final TIME_INTERLEAVE_MODE_2_8:I = 0x100

.field public static final TIME_INTERLEAVE_MODE_3_0:I = 0x200

.field public static final TIME_INTERLEAVE_MODE_3_1:I = 0x400

.field public static final TIME_INTERLEAVE_MODE_3_2:I = 0x800

.field public static final TIME_INTERLEAVE_MODE_3_4:I = 0x1000

.field public static final TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final TIME_INTERLEAVE_MODE_UNDEFINED:I


# instance fields
.field private final mBandwidth:I

.field private final mGuardInterval:I

.field private final mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

.field private final mMode:I

.field private final mPartialReceptionFlag:I

.field private final mServiceAreaId:I


# direct methods
.method private constructor <init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;I)V
    .registers 12

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    array-length v0, p7

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    const/4 v0, 0x0

    :goto_11
    array-length v1, p7

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v2, p7, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1d
    iput p8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mPartialReceptionFlag:I

    return-void
.end method

.method synthetic constructor <init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;ILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;I)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getBandwidth()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    return v0
.end method

.method public getCodeRate()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v2, v0

    if-lez v2, :cond_16

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getCodeRate()I

    move-result v1

    goto :goto_17

    :cond_16
    nop

    :goto_17
    return v1
.end method

.method public getGuardInterval()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    return v0
.end method

.method public getLayerSettings()[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    return v0
.end method

.method public getModulation()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v2, v0

    if-lez v2, :cond_15

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getModulation()I

    move-result v1

    :cond_15
    return v1
.end method

.method public getPartialReceptionFlag()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mPartialReceptionFlag:I

    return v0
.end method

.method public getServiceAreaId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method
