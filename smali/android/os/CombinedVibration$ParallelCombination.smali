# classes3.dex

.class public final Landroid/os/CombinedVibration$ParallelCombination;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParallelCombination"
.end annotation


# instance fields
.field private final mEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;
    .registers 4

    iget-object v0, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public combine()Landroid/os/CombinedVibration;
    .registers 3

    iget-object v0, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/os/CombinedVibration$Stereo;

    iget-object v1, p0, Landroid/os/CombinedVibration$ParallelCombination;->mEffects:Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/os/CombinedVibration$Stereo;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/os/CombinedVibration;->validate()V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Combination must have at least one element to combine."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
