# classes3.dex

.class Landroid/util/Log$ImmediateLogWriter;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateLogWriter"
.end annotation


# instance fields
.field private bufID:I

.field private priority:I

.field private tag:Ljava/lang/String;

.field private written:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    iput p1, p0, Landroid/util/Log$ImmediateLogWriter;->bufID:I

    iput p2, p0, Landroid/util/Log$ImmediateLogWriter;->priority:I

    iput-object p3, p0, Landroid/util/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getWritten()I
    .registers 2

    iget v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    return v0
.end method

.method public write([CII)V
    .registers 9

    iget v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    iget v1, p0, Landroid/util/Log$ImmediateLogWriter;->bufID:I

    iget v2, p0, Landroid/util/Log$ImmediateLogWriter;->priority:I

    iget-object v3, p0, Landroid/util/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1, v2, v3, v4}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    return-void
.end method
