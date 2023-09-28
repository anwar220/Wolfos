# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;


# static fields
.field private static final SECP384R1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

.field private static final SECP384R1_DEFAULT_COORDS:I = 0x2

.field public static final q:Ljava/math/BigInteger;


# instance fields
.field protected infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSECP384R1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->SECP384R1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->SECP384R1_AFFINE_ZS:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->order:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->cofactor:Ljava/math/BigInteger;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->coord:I

    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;-><init>()V

    return-object v0
.end method

.method public createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 12

    const/16 v0, 0xc

    mul-int/lit8 v1, p3, 0xc

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, p3, :cond_2f

    add-int v4, p2, v3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->copy(I[II[II)V

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v5, v7, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->copy(I[II[II)V

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;I[I)V

    return-object v2
.end method

.method protected createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->randomMult(Ljava/security/SecureRandom;[I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5  #00000002
    .end packed-switch
.end method
