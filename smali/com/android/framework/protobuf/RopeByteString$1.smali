# classes4.dex

.class Lcom/android/framework/protobuf/RopeByteString$1;
.super Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/RopeByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

.field final pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Lcom/android/framework/protobuf/RopeByteString;


# direct methods
.method constructor <init>(Lcom/android/framework/protobuf/RopeByteString;)V
    .registers 4

    iput-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$1;->this$0:Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;-><init>()V

    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$1;->nextPiece()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    return-void
.end method

.method private nextPiece()Lcom/android/framework/protobuf/ByteString$ByteIterator;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->pieces:Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextByte()B
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$1;->nextPiece()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$1;->current:Lcom/android/framework/protobuf/ByteString$ByteIterator;

    :cond_16
    return v0

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
