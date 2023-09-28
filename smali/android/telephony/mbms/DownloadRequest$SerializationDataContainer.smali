# classes3.dex

.class Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationDataContainer"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private destination:Landroid/net/Uri;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method static bridge synthetic -$$Nest$fgetappIntent(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestination(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsource(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .registers 1

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .registers 1

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetsourceUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetdestinationUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetserializedResultIntentForApp(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
