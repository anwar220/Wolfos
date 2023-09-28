# classes.dex

.class abstract Landroid/content/pm/PackageParser$SplitDependencyLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplitDependencyLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    return-void
.end method

.method private static append([II)[I
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_9

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    :cond_9
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    array-length v1, p0

    aput p1, v0, v1

    return-object v0
.end method

.method private collectConfigSplitIndices(I)[I
    .registers 5

    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_15

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_f

    goto :goto_15

    :cond_f
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    :cond_15
    :goto_15
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    return-object v1
.end method

.method public static createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x0

    :goto_10
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    const-string v6, "\', which is missing."

    const-string v7, "Split \'"

    const/4 v8, 0x0

    if-ge v2, v5, :cond_68

    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_21

    goto :goto_65

    :cond_21
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_5b

    iget-object v9, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v9, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_32

    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    :cond_32
    new-instance v1, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requires split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v1

    :cond_5b
    const/4 v9, 0x0

    :goto_5c
    add-int/lit8 v6, v2, 0x1

    new-array v7, v1, [I

    aput v9, v7, v3

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_68
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    :goto_6c
    if-ge v1, v2, :cond_fa

    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_76

    goto/16 :goto_f6

    :cond_76
    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_e5

    iget-object v9, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v9, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_bc

    iget-object v10, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_8d

    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    :cond_8d
    new-instance v3, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v3

    :cond_bc
    new-instance v3, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' targets split \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v3

    :cond_e5
    const/4 v9, 0x0

    :goto_e6
    nop

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    add-int/lit8 v11, v1, 0x1

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->append([II)[I

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_f6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6c

    :cond_fa
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_104
    if-ge v2, v5, :cond_131

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    :goto_10d
    if-eq v6, v4, :cond_12e

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_126

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-eqz v7, :cond_123

    aget v9, v7, v3

    goto :goto_124

    :cond_123
    move v9, v4

    :goto_124
    move v6, v9

    goto :goto_10d

    :cond_126
    new-instance v3, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;

    const-string v4, "Cycle detected in split dependencies."

    invoke-direct {v3, v4, v8}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException-IA;)V

    throw v3

    :cond_12e
    add-int/lit8 v2, v2, 0x1

    goto :goto_104

    :cond_131
    return-object v0
.end method


# virtual methods
.method protected abstract constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isSplitCached(I)Z
.end method

.method protected loadDependenciesForSplit(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_13

    invoke-direct {p0, v0}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->constructSplit(I[II)V

    return-void

    :cond_13
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    :goto_1b
    iget-object v2, p0, Landroid/content/pm/PackageParser$SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_2b

    array-length v3, v2

    if-lez v3, :cond_2b

    aget p1, v2, v0

    goto :goto_2c

    :cond_2b
    const/4 p1, -0x1

    :goto_2c
    if-ltz p1, :cond_39

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    goto :goto_1b

    :cond_39
    :goto_39
    move v0, p1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_40
    if-ltz v2, :cond_51

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/PackageParser$SplitDependencyLoader;->constructSplit(I[II)V

    move v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    :cond_51
    return-void
.end method