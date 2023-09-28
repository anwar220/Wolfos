# classes2.dex

.class public final Landroid/media/tv/CommandRequest;
.super Landroid/media/tv/BroadcastInfoRequest;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ARGUMENT_TYPE_JSON:Ljava/lang/String; = "json"

.field public static final ARGUMENT_TYPE_XML:Ljava/lang/String; = "xml"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/CommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_TYPE:I = 0x7


# instance fields
.field private final mArgumentType:Ljava/lang/String;

.field private final mArguments:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/CommandRequest$1;

    invoke-direct {v0}, Landroid/media/tv/CommandRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/CommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput-object p3, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    iput-object p6, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandRequest;
    .registers 2

    new-instance v0, Landroid/media/tv/CommandRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/CommandRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getArgumentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    return-object v0
.end method

.method public getArguments()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
