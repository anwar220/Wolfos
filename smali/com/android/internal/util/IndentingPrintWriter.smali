# classes4.dex

.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Landroid/util/IndentingPrintWriter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decreaseIndent()Landroid/util/IndentingPrintWriter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .registers 1

    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public bridge synthetic increaseIndent()Landroid/util/IndentingPrintWriter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .registers 1

    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public bridge synthetic setIndent(I)Landroid/util/IndentingPrintWriter;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 2

    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(I)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 2

    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method
