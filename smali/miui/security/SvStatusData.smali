# classes4.dex

.class public Lmiui/security/SvStatusData;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_BASE_BAND_CN0S:Ljava/lang/String; = "key_basebandCn0s"

.field public static final KEY_CN0S:Ljava/lang/String; = "key_cn0s"

.field public static final KEY_SV_AZIMUTHS:Ljava/lang/String; = "key_svAzimuths"

.field public static final KEY_SV_CARRIER_FREQS:Ljava/lang/String; = "key_svCarrierFreqs"

.field public static final KEY_SV_COUNT:Ljava/lang/String; = "key_svcount"

.field public static final KEY_SV_ELEVATIONS:Ljava/lang/String; = "key_svElevations"

.field public static final KEY_SV_ID_WITH_FLAGS:Ljava/lang/String; = "key_svidWithFlags"


# instance fields
.field private basebandCn0s:[F

.field private cn0s:[F

.field private svAzimuths:[F

.field private svCarrierFreqs:[F

.field private svCount:I

.field private svElevations:[F

.field private svidWithFlags:[I


# direct methods
.method public constructor <init>(I[I[F[F[F[F[F)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/security/SvStatusData;->svCount:I

    iput-object p2, p0, Lmiui/security/SvStatusData;->svidWithFlags:[I

    iput-object p3, p0, Lmiui/security/SvStatusData;->cn0s:[F

    iput-object p4, p0, Lmiui/security/SvStatusData;->svElevations:[F

    iput-object p5, p0, Lmiui/security/SvStatusData;->svAzimuths:[F

    iput-object p6, p0, Lmiui/security/SvStatusData;->svCarrierFreqs:[F

    iput-object p7, p0, Lmiui/security/SvStatusData;->basebandCn0s:[F

    return-void
.end method


# virtual methods
.method public getBasebandCn0s()[F
    .registers 2

    iget-object v0, p0, Lmiui/security/SvStatusData;->basebandCn0s:[F

    return-object v0
.end method

.method public getCn0s()[F
    .registers 2

    iget-object v0, p0, Lmiui/security/SvStatusData;->cn0s:[F

    return-object v0
.end method

.method public getSvAzimuths()[F
    .registers 2

    iget-object v0, p0, Lmiui/security/SvStatusData;->svAzimuths:[F

    return-object v0
.end method

.method public getSvCarrierFreqs()[F
    .registers 2

    iget-object v0, p0, Lmiui/security/SvStatusData;->svCarrierFreqs:[F

    return-object v0
.end method

.method public getSvCount()I
    .registers 2

    iget v0, p0, Lmiui/security/SvStatusData;->svCount:I

    return v0
.end method

.method public getSvElevations()[F
    .registers 2

    iget-object v0, p0, Lmiui/security/SvStatusData;->svElevations:[F

    return-object v0
.end method

.method public getSvidWithFlags()[I
    .registers 2

    iget-object v0, p0, Lmiui/security/SvStatusData;->svidWithFlags:[I

    return-object v0
.end method

.method public setBasebandCn0s([F)V
    .registers 2

    iput-object p1, p0, Lmiui/security/SvStatusData;->basebandCn0s:[F

    return-void
.end method

.method public setCn0s([F)V
    .registers 2

    iput-object p1, p0, Lmiui/security/SvStatusData;->cn0s:[F

    return-void
.end method

.method public setSvAzimuths([F)V
    .registers 2

    iput-object p1, p0, Lmiui/security/SvStatusData;->svAzimuths:[F

    return-void
.end method

.method public setSvCarrierFreqs([F)V
    .registers 2

    iput-object p1, p0, Lmiui/security/SvStatusData;->svCarrierFreqs:[F

    return-void
.end method

.method public setSvCount(I)V
    .registers 2

    iput p1, p0, Lmiui/security/SvStatusData;->svCount:I

    return-void
.end method

.method public setSvElevations([F)V
    .registers 2

    iput-object p1, p0, Lmiui/security/SvStatusData;->svElevations:[F

    return-void
.end method

.method public setSvidWithFlags([I)V
    .registers 2

    iput-object p1, p0, Lmiui/security/SvStatusData;->svidWithFlags:[I

    return-void
.end method
