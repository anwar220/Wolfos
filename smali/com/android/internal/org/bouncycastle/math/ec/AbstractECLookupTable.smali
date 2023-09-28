# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;->lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
