# classes4.dex

.class public interface abstract Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledLambda;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation


# virtual methods
.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.end method
