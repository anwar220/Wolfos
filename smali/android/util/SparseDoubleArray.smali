# classes3.dex

.class public Landroid/util/SparseDoubleArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mValues:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseDoubleArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, p1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    return-void
.end method

.method public clone()Landroid/util/SparseDoubleArray;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseDoubleArray;

    move-object v0, v1

    iget-object v1, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->clone()Landroid/util/SparseDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public get(I)D
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(ID)D
    .registers 7

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9

    return-wide p2

    :cond_9
    invoke-virtual {p0, v0}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public incrementValue(ID)V
    .registers 8

    invoke-virtual {p0, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    add-double v2, v0, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseDoubleArray;->put(ID)V

    return-void
.end method

.method public indexOfKey(I)I
    .registers 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .registers 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public put(ID)V
    .registers 7

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public removeAt(I)V
    .registers 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    return-void
.end method

.method public setValueAt(ID)V
    .registers 7

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->setValueAt(IJ)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    if-lez v1, :cond_28

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)D
    .registers 4

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
