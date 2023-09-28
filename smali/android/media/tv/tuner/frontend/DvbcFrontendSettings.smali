# classes2.dex

.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Bandwidth;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$SpectralInversion;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Annex;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$OuterFec;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final ANNEX_A:I = 0x1

.field public static final ANNEX_B:I = 0x2

.field public static final ANNEX_C:I = 0x4

.field public static final ANNEX_UNDEFINED:I = 0x0

.field public static final BANDWIDTH_5MHZ:I = 0x1

.field public static final BANDWIDTH_6MHZ:I = 0x2

.field public static final BANDWIDTH_7MHZ:I = 0x4

.field public static final BANDWIDTH_8MHZ:I = 0x8

.field public static final BANDWIDTH_UNDEFINED:I = 0x0

.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_128QAM:I = 0x10

.field public static final MODULATION_MOD_16QAM:I = 0x2

.field public static final MODULATION_MOD_256QAM:I = 0x20

.field public static final MODULATION_MOD_32QAM:I = 0x4

.field public static final MODULATION_MOD_64QAM:I = 0x8

.field public static final MODULATION_UNDEFINED:I = 0x0

.field public static final OUTER_FEC_OUTER_FEC_NONE:I = 0x1

.field public static final OUTER_FEC_OUTER_FEC_RS:I = 0x2

.field public static final OUTER_FEC_UNDEFINED:I = 0x0

.field public static final SPECTRAL_INVERSION_INVERTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SPECTRAL_INVERSION_NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SPECTRAL_INVERSION_UNDEFINED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_INTERLEAVE_MODE_128_1_0:I = 0x2

.field public static final TIME_INTERLEAVE_MODE_128_1_1:I = 0x4

.field public static final TIME_INTERLEAVE_MODE_128_2:I = 0x80

.field public static final TIME_INTERLEAVE_MODE_128_3:I = 0x100

.field public static final TIME_INTERLEAVE_MODE_128_4:I = 0x200

.field public static final TIME_INTERLEAVE_MODE_16_8:I = 0x20

.field public static final TIME_INTERLEAVE_MODE_32_4:I = 0x10

.field public static final TIME_INTERLEAVE_MODE_64_2:I = 0x8

.field public static final TIME_INTERLEAVE_MODE_8_16:I = 0x40

.field public static final TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final TIME_INTERLEAVE_MODE_UNDEFINED:I


# instance fields
.field private final mAnnex:I

.field private final mBandwidth:I

.field private final mInnerFec:J

.field private final mInterleaveMode:I

.field private final mModulation:I

.field private final mOuterFec:I

.field private final mSpectralInversion:I

.field private final mSymbolRate:I


# direct methods
.method private constructor <init>(JIJIIIIII)V
    .registers 12

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mModulation:I

    iput-wide p4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInnerFec:J

    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSymbolRate:I

    iput p7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mOuterFec:I

    iput p8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mAnnex:I

    iput p9, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSpectralInversion:I

    iput p10, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInterleaveMode:I

    iput p11, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mBandwidth:I

    return-void
.end method

.method synthetic constructor <init>(JIJIIIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(JIJIIIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getAnnex()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mAnnex:I

    return v0
.end method

.method public getBandwidth()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mBandwidth:I

    return v0
.end method

.method public getInnerFec()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInnerFec:J

    return-wide v0
.end method

.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mModulation:I

    return v0
.end method

.method public getOuterFec()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mOuterFec:I

    return v0
.end method

.method public getSpectralInversion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSpectralInversion:I

    return v0
.end method

.method public getSymbolRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public getTimeInterleaveMode()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInterleaveMode:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
