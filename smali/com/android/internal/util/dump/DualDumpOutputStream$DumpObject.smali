# classes4.dex

.class Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;
.super Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/dump/DualDumpOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpObject"
.end annotation


# instance fields
.field private final mSubObjects:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable-IA;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method print(Landroid/util/IndentingPrintWriter;Z)V
    .registers 9

    if-eqz p2, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    :cond_1b
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->print(Landroid/util/IndentingPrintWriter;Z)V

    goto :goto_84

    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    iget-object v5, v5, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    :goto_6e
    if-ge v4, v2, :cond_7c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    invoke-virtual {v5, p1, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->print(Landroid/util/IndentingPrintWriter;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_7c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v3, "]"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_84
    goto :goto_2e

    :cond_85
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
