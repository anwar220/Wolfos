# classes4.dex

.class public Lcom/android/internal/app/procstats/DurationsTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method


# virtual methods
.method public addDuration(IJ)V
    .registers 7

    int-to-byte v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getOrAddKey(BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->setValue(IJ)V

    return-void
.end method

.method public addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method