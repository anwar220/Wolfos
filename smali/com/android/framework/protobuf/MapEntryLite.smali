# classes4.dex

.class public Lcom/android/framework/protobuf/MapEntryLite;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_FIELD_NUMBER:I = 0x1

.field private static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iput-object p2, p0, Lcom/android/framework/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/framework/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/MapEntryLite$Metadata;-><init>(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iput-object p2, p0, Lcom/android/framework/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/framework/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-void
.end method

.method static computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v2, 0x2

    invoke-static {v1, v2, p2}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static newDefaultInstance(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/android/framework/protobuf/MapEntryLite<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/MapEntryLite;-><init>(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v0
.end method

.method static parseEntry(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3a

    :cond_b
    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v3, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v3, v0}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_40

    :cond_1f
    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_33

    iget-object v3, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v3, v1}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_40

    :cond_33
    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v3

    if-nez v3, :cond_40

    nop

    :goto_3a
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_40
    :goto_40
    goto :goto_4
.end method

.method static parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/MapEntryLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/framework/protobuf/FieldSet;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_11  #0x3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Groups are not allowed in maps."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19  #0x2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_22  #0x1
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_19  #00000002
        :pswitch_11  #00000003
    .end packed-switch
.end method

.method static writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p3}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {v1, p2, p3}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    return-object v0
.end method

.method getMetadata()Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public parseEntry(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {v0, v1, p2}, Lcom/android/framework/protobuf/MapEntryLite;->parseEntry(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public parseInto(Lcom/android/framework/protobuf/MapFieldLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v2, v2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v3, v3, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_10
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-nez v4, :cond_17

    goto :goto_4e

    :cond_17
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v6, v6, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    if-ne v4, v5, :cond_2f

    iget-object v5, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v5, v2}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_59

    :cond_2f
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v6, v6, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    if-ne v4, v5, :cond_47

    iget-object v5, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v5, v3}, Lcom/android/framework/protobuf/MapEntryLite;->parseField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_59

    :cond_47
    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v5

    if-nez v5, :cond_59

    nop

    :goto_4e
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_59
    :goto_59
    goto :goto_10
.end method

.method public serializeTo(Lcom/android/framework/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {v0, p3, p4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/MapEntryLite;->metadata:Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    invoke-static {p1, v0, p3, p4}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
