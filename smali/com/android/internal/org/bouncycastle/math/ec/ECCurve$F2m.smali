# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I


# direct methods
.method static bridge synthetic -$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return p0
.end method

.method protected constructor <init>(IIIILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 11

    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 13

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_16

    new-array v1, v4, [I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v4, v1, v3

    goto :goto_25

    :cond_16
    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v5, v1, v3

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    aput v3, v1, v4

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    aput v3, v1, v2

    :goto_25
    move-object v6, v1

    mul-int v1, p3, v0

    mul-int/2addr v1, v2

    new-array v7, v1, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, p3, :cond_4e

    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v1, v0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_4e
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V

    return-object v8
.end method

.method protected createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    :cond_c
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 9

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public getFieldSize()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public isTrinomial()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 3

    sparse-switch p1, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x6 -> :sswitch_5
    .end sparse-switch
.end method
