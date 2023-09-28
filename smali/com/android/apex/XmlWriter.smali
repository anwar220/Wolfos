# classes4.dex

.class public Lcom/android/apex/XmlWriter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private indent:I

.field private out:Ljava/io/PrintWriter;

.field private outBuffer:Ljava/lang/StringBuilder;

.field private startLine:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    return-void
.end method

.method private printIndent()V
    .registers 4

    nop

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/apex/XmlWriter;->indent:I

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    return-void
.end method

.method public static write(Lcom/android/apex/XmlWriter;Lcom/android/apex/ApexInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const-string v0, "apex-info"

    invoke-virtual {p1, p0, v0}, Lcom/android/apex/ApexInfo;->write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/apex/XmlWriter;->printXml()V

    return-void
.end method

.method public static write(Lcom/android/apex/XmlWriter;Lcom/android/apex/ApexInfoList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const-string v0, "apex-info-list"

    invoke-virtual {p1, p0, v0}, Lcom/android/apex/ApexInfoList;->write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/apex/XmlWriter;->printXml()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_7
    return-void
.end method

.method decreaseIndent()V
    .registers 2

    iget v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    return-void
.end method

.method increaseIndent()V
    .registers 2

    iget v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    return-void
.end method

.method print(Ljava/lang/String;)V
    .registers 7

    const-string v0, "\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_31

    iget-boolean v3, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    if-eqz v3, :cond_1a

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-direct {p0}, Lcom/android/apex/XmlWriter;->printIndent()V

    :cond_1a
    iget-object v3, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_31
    return-void
.end method

.method printXml()V
    .registers 3

    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
