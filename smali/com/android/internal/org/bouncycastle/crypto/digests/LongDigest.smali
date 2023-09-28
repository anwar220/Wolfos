# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/internal/org/bouncycastle/util/Memoable;
.implements Lcom/android/internal/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void

    :array_a
    .array-data 8
        0x428a2f98d728ae22L  # 3.5989662528217666E12
        0x7137449123ef65cdL  # 2.367405559035152E237
        -0x4a3f043013b2c4d1L  # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L  # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L  # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL  # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL  # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L  # 4.985403983718413E101
        0x72be5d74f27b896fL  # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL  # -1.1720222785268623E8
        -0x1b64963e610eb52eL  # -4.339261227288659E176
        -0x1041b879c7b0da1dL  # -1.836300920646737E230
        0xfc19dc68b8cd5b5L  # 8.864787397362889E-233
        0x240ca1cc77ac9c65L  # 4.924067956729057E-135
        0x2de92c6f592b0275L  # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L  # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L  # 3.100593885146353E138
        0x76f988da831153b5L  # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L  # -4.511217866312199E-115
        -0x4ffcd8376704dec1L  # -2.0678662886600765E-77
        -0x40a680384110f11cL  # -0.0015563440936014411
        -0x391ff40cc257703eL  # -2.603722742751637E33
        -0x2a586eb86cf558dbL  # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L  # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL  # 5.84763610164635E63
        0x53380d139d95b3dfL  # 7.838866619197482E92
        0x650a73548baf63deL  # 5.35921865865203E178
        0x766a0abb3c77b2a8L  # 2.5625906234442426E262
        -0x7e3d36d1b812511aL  # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L  # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL  # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L  # -1.17632082693375E36
        -0x2e6d17e62910ade8L  # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L  # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L  # 4.067301537801791E-163
        0x2748774cdf8eeb99L  # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L  # 6.82593759724882E-55
        0x391c0cb3c5c95a63L  # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL  # 6.809319594147137E71
        0x5b9cca4f7763e373L  # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L  # 6.943421982965376E193
        0x748f82ee5defb2fcL  # 2.887850816088868E253
        0x78a5636f43172f60L  # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L  # -5.111680914909667E-228
        -0x5baf9314217d4217L  # -9.03940504491957E-134
        -0x41065c084d3986ebL  # -2.445268471406536E-5
        -0x398e870d1c8dacd5L  # -2.2148969568888243E31
        -0x35d8c13115d99e64L  # -1.6986554718624063E49
        -0x2e794738de3f3df9L  # -5.517613964471652E84
        -0x15258229321f14e2L  # -5.315750124715331E206
        -0xa82b08011912e88L  # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L  # 7.138679721560702E-112
        0x32caab7b40c72493L  # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL  # 1.0665892261952011E-16
        0x431d67c49c100d4cL  # 2.069217113539411E15
        0x4cc5d4becb3e42b6L  # 7.016224550123326E61
        0x597f299cfc657e2aL  # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL  # 2.873901462601813E153
        0x6c44198c4a475817L  # 3.3832852265175575E213
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method

.method private Ch(JJJ)J
    .registers 11

    and-long v0, p1, p3

    not-long v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Maj(JJJ)J
    .registers 11

    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma0(J)J
    .registers 9

    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma1(J)J
    .registers 9

    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum0(J)J
    .registers 9

    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum1(J)J
    .registers 9

    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private adjustByteCounts()V
    .registers 9

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v6, 0x3d

    ushr-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    :cond_17
    return-void
.end method


# virtual methods
.method protected copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V
    .registers 6

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    return-void
.end method

.method public finish()V
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    :goto_e
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_e

    :cond_17
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    return-void
.end method

.method public getByteLength()I
    .registers 2

    const/16 v0, 0x80

    return v0
.end method

.method protected getEncodedStateSize()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x60

    return v0
.end method

.method protected populateState([B)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v2, 0x14

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const/16 v2, 0x1c

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const/16 v2, 0x24

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const/16 v2, 0x2c

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const/16 v2, 0x34

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const/16 v2, 0x3c

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const/16 v2, 0x44

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const/16 v2, 0x4c

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/16 v2, 0x54

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x5c

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v0, 0x0

    :goto_5d
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ge v0, v1, :cond_6f

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aget-wide v1, v1, v0

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x60

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6f
    return-void
.end method

.method protected processBlock()V
    .registers 38

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    const/16 v0, 0x10

    :goto_7
    const/16 v1, 0x4f

    if-gt v0, v1, :cond_31

    iget-object v1, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v2, v0, -0x2

    aget-wide v2, v1, v2

    invoke-direct {v7, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v2

    iget-object v4, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v5, v0, -0x7

    aget-wide v5, v4, v5

    add-long/2addr v2, v5

    add-int/lit8 v5, v0, -0xf

    aget-wide v4, v4, v5

    invoke-direct {v7, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v5, v0, -0x10

    aget-wide v4, v4, v5

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_31
    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iget-wide v2, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iget-wide v4, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iget-wide v8, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iget-wide v10, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iget-wide v12, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iget-wide v14, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-wide/from16 v16, v0

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    move-wide v12, v2

    move-wide v14, v4

    move/from16 v3, v18

    move-wide/from16 v35, v16

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide v5, v10

    move-wide/from16 v8, v35

    move-wide v10, v0

    :goto_58
    const/16 v0, 0xa

    if-ge v3, v0, :cond_21f

    invoke-direct {v7, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v23

    move-object/from16 v0, p0

    move-wide v1, v5

    move/from16 v25, v3

    move-wide/from16 v3, v19

    move-wide/from16 v26, v5

    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v23, v23, v0

    sget-object v28, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v0, v28, v16

    add-long v23, v23, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v29, v16, 0x1

    aget-wide v0, v0, v16

    add-long v23, v23, v0

    add-long v10, v10, v23

    add-long v5, v17, v10

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v12

    move-wide/from16 v23, v12

    move-wide v12, v5

    move-wide v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v10, v10, v16

    invoke-direct {v7, v12, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, v26

    move-wide/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v29

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v18, v29, 0x1

    aget-wide v0, v0, v29

    add-long v16, v16, v0

    add-long v21, v21, v16

    add-long v14, v14, v21

    invoke-direct {v7, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v8

    move-wide/from16 v5, v23

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v5, v21, v16

    invoke-direct {v7, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v12

    move-wide/from16 v29, v12

    move-wide v12, v5

    move-wide/from16 v5, v26

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v18

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v18, 0x1

    aget-wide v0, v0, v18

    add-long v16, v16, v0

    add-long v19, v19, v16

    add-long v5, v23, v19

    invoke-direct {v7, v12, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v10

    move-wide/from16 v31, v10

    move-wide v10, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    add-long v5, v19, v16

    invoke-direct {v7, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    move-wide/from16 v33, v14

    move-wide v14, v5

    move-wide/from16 v5, v29

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v21

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v18, v21, 0x1

    aget-wide v0, v0, v21

    add-long v16, v16, v0

    add-long v16, v26, v16

    add-long v8, v8, v16

    invoke-direct {v7, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v12

    move-wide/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v19, v19, v0

    add-long v5, v16, v19

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move-wide/from16 v19, v10

    move-wide v10, v5

    move-wide/from16 v5, v33

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v18

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v18, 0x1

    aget-wide v0, v0, v18

    add-long v16, v16, v0

    add-long v16, v29, v16

    add-long v5, v31, v16

    invoke-direct {v7, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    move-wide/from16 v29, v14

    move-wide v14, v5

    move-wide v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v22, v22, v0

    add-long v5, v16, v22

    invoke-direct {v7, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v8

    move-wide/from16 v22, v8

    move-wide v8, v5

    move-wide/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v21

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v18, v21, 0x1

    aget-wide v0, v0, v21

    add-long v16, v16, v0

    add-long v16, v33, v16

    add-long v12, v12, v16

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move-wide/from16 v5, v29

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v26, v26, v0

    add-long v5, v16, v26

    invoke-direct {v7, v12, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    move-wide/from16 v26, v14

    move-wide v14, v5

    move-wide/from16 v5, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v18

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v18, 0x1

    aget-wide v0, v0, v18

    add-long v16, v16, v0

    add-long v16, v19, v16

    add-long v5, v29, v16

    invoke-direct {v7, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v8

    move-wide/from16 v29, v8

    move-wide v8, v5

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v18, v18, v0

    add-long v5, v16, v18

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v12

    move-wide/from16 v18, v8

    move-wide v8, v5

    move-wide/from16 v5, v26

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v0

    add-long v16, v16, v0

    aget-wide v0, v28, v21

    add-long v16, v16, v0

    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v20, v21, 0x1

    aget-wide v0, v0, v21

    add-long v16, v16, v0

    add-long v16, v22, v16

    add-long v10, v10, v16

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v14

    move-wide/from16 v5, v29

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v0

    add-long v21, v21, v0

    add-long v0, v16, v21

    add-int/lit8 v3, v25, 0x1

    move-wide v5, v10

    move-wide/from16 v21, v12

    move/from16 v16, v20

    move-wide/from16 v10, v26

    move-wide v12, v8

    move-wide/from16 v19, v18

    move-wide/from16 v17, v29

    move-wide v8, v0

    goto/16 :goto_58

    :cond_21f
    move/from16 v25, v3

    move-wide/from16 v26, v5

    move-wide/from16 v23, v12

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    add-long/2addr v0, v8

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-long v0, v0, v23

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-long/2addr v0, v14

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-long v0, v0, v17

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-long v0, v0, v26

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-long v0, v0, v19

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-long v0, v0, v21

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    iget-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-long/2addr v0, v10

    iput-wide v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/4 v0, 0x0

    iput v0, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/4 v0, 0x0

    :goto_256
    const/16 v1, 0x10

    if-ge v0, v1, :cond_263

    iget-object v1, v7, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_256

    :cond_263
    return-void
.end method

.method protected processLength(JJ)V
    .registers 7

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, v0, v1

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    :cond_17
    return-void
.end method

.method public reset()V
    .registers 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/4 v3, 0x0

    :goto_a
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v5, v4

    if-ge v3, v5, :cond_14

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v4, v3

    if-eq v2, v4, :cond_21

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method

.method protected restoreState([B)V
    .registers 6

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const/16 v0, 0x34

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const/16 v0, 0x44

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const/16 v0, 0x4c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const/16 v0, 0x54

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/16 v0, 0x5c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/4 v0, 0x0

    :goto_67
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ge v0, v1, :cond_7a

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x60

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_7a
    return-void
.end method

.method public update(B)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    array-length v1, v0

    if-ne v2, v1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    :cond_13
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    return-void
.end method

.method public update([BII)V
    .registers 9

    :goto_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_26

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_10

    :cond_26
    :goto_26
    if-lez p3, :cond_32

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_26

    :cond_32
    return-void
.end method
