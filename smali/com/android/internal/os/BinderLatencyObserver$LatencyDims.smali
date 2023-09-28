# classes4.dex

.class public Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyDims"
.end annotation


# instance fields
.field private mBinderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private mHashCode:I

.field private mTransactionCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    return-void
.end method

.method public static create(Ljava/lang/Class;I)Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    instance-of v1, p1, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    if-nez v1, :cond_8

    goto :goto_1d

    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    invoke-virtual {v1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getTransactionCode()I

    move-result v3

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    return v0
.end method

.method public getBinderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTransactionCode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    return v1
.end method
