# classes4.dex

.class public final Lcom/android/internal/util/dump/DumpableContainerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/DumpableContainer;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDumpables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Dumpable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/dump/DumpableContainerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method private dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    const-string v1, "No dumpables"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    :cond_e
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " dumpables"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_16
    return v0
.end method

.method private indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_3
    invoke-interface {p2, p1, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    nop

    return-void

    :catchall_b
    move-exception v0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw v0
.end method

.method static synthetic lambda$addDumpable$0(Landroid/util/Dumpable;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDumpable(Landroid/util/Dumpable;)Z
    .registers 4

    const-string v0, "dumpable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/util/Dumpable;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    return v1

    :cond_1b
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method public dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    :cond_f
    const-string v2, ":"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_3d

    iget-object v3, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Dumpable;

    invoke-direct {p0, v0, v4, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3d
    return-void
.end method

.method public dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Dumpable;

    if-nez v1, :cond_18

    const-string v2, "No "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(C)V

    invoke-direct {p0, v0, v1, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V

    return-void
.end method

.method public listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    :cond_f
    const-string v2, ": "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2e

    iget-object v3, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2b

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public removeDumpable(Landroid/util/Dumpable;)Z
    .registers 8

    const-string v0, "dumpable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Dumpable;

    if-nez v2, :cond_18

    return v1

    :cond_18
    if-eq v2, p1, :cond_48

    sget-object v3, Lcom/android/internal/util/dump/DumpableContainerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDumpable(): passed dumpable ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but internal dumpable with that name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_48
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method
