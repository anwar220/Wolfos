# classes4.dex

.class public final Lcom/android/internal/util/BinaryXmlSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/TypedXmlSerializer;


# static fields
.field static final ATTRIBUTE:I = 0xf

.field private static final BUFFER_SIZE:I = 0x8000

.field public static final PROTOCOL_MAGIC_VERSION_0:[B

.field static final TYPE_BOOLEAN_FALSE:I = 0xd0

.field static final TYPE_BOOLEAN_TRUE:I = 0xc0

.field static final TYPE_BYTES_BASE64:I = 0x50

.field static final TYPE_BYTES_HEX:I = 0x40

.field static final TYPE_DOUBLE:I = 0xb0

.field static final TYPE_FLOAT:I = 0xa0

.field static final TYPE_INT:I = 0x60

.field static final TYPE_INT_HEX:I = 0x70

.field static final TYPE_LONG:I = 0x80

.field static final TYPE_LONG_HEX:I = 0x90

.field static final TYPE_NULL:I = 0x10

.field static final TYPE_STRING:I = 0x20

.field static final TYPE_STRING_INTERNED:I = 0x30


# instance fields
.field private mOut:Lcom/android/internal/util/FastDataOutput;

.field private mTagCount:I

.field private mTagNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x41t
        0x42t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    return-void
.end method

.method private static illegalNamespace()Ljava/lang/IllegalArgumentException;
    .registers 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeToken(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    or-int/lit8 v1, p1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_16

    :cond_f
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    or-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    :goto_16
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    if-eqz p3, :cond_1d

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    goto :goto_29

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    :goto_29
    return-object p0
.end method

.method public attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    return-object p0
.end method

.method public attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    return-object p0
.end method

.method public attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeDouble(D)V

    return-object p0
.end method

.method public attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeFloat(F)V

    return-object p0
.end method

.method public attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    return-object p0
.end method

.method public attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    return-object p0
.end method

.method public attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    return-object p0
.end method

.method public attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlSerializer;->flush()V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->flush()V

    :cond_7
    return-void
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_15
    :goto_15
    invoke-static {p1}, Lcom/android/internal/util/FastDataOutput;->obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/FastDataOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    sget-object v1, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_15
    :goto_15
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_24

    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_20

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    :cond_20
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-object p0
.end method
