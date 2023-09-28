# classes3.dex

.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylists;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Denylists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

.field public static final DENYLISTS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/framework/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;-><init>()V

    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addAllDenylists(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)V
    .registers 1

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->clearDenylists()V

    return-void
.end method

.method static synthetic access$1800(Landroid/updatabledriver/UpdatableDriverProto$Denylists;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->removeDenylists(I)V

    return-void
.end method

.method static synthetic access$900()Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method private addAllDenylists(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V
    .registers 5

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-interface {v0, p1, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V
    .registers 4

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearDenylists()V
    .registers 2

    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureDenylistsIsMutable()V
    .registers 2

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static newBuilder()Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 2

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom([B)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static parser()Lcom/android/framework/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDenylists(I)V
    .registers 3

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V
    .registers 5

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-interface {v0, p1, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_13  #0x7
    return-object v2

    :pswitch_14  #0x6
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_19  #0x5
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v0, :cond_34

    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    monitor-enter v1

    :try_start_20
    sget-object v2, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->PARSER:Lcom/android/framework/protobuf/Parser;

    move-object v0, v2

    if-nez v0, :cond_2f

    new-instance v2, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->PARSER:Lcom/android/framework/protobuf/Parser;

    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    :cond_34
    :goto_34
    return-object v0

    :pswitch_35  #0x4
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0

    :pswitch_38  #0x3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "denylists_"

    aput-object v3, v0, v2

    const-class v2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    aput-object v2, v0, v1

    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object v2, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v2, v1, v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_4d  #0x2
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;

    invoke-direct {v0, v2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;-><init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V

    return-object v0

    :pswitch_53  #0x1
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;-><init>()V

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_4d  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_19  #00000005
        :pswitch_14  #00000006
        :pswitch_13  #00000007
    .end packed-switch
.end method

.method public getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public getDenylistsCount()I
    .registers 2

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDenylistsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDenylistsOrBuilder(I)Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;
    .registers 3

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;

    return-object v0
.end method

.method public getDenylistsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method
