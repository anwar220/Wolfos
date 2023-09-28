# classes2.dex

.class public final Landroid/media/tv/TunedInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TunedInfo$AppType;
    }
.end annotation


# static fields
.field public static final APP_TAG_SELF:I = 0x0

.field public static final APP_TYPE_NON_SYSTEM:I = 0x3

.field public static final APP_TYPE_SELF:I = 0x1

.field public static final APP_TYPE_SYSTEM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TunedInfo"


# instance fields
.field private final mAppTag:I

.field private final mAppType:I

.field private final mChannelUri:Landroid/net/Uri;

.field private final mInputId:Ljava/lang/String;

.field private final mIsMainSession:Z

.field private final mIsRecordingSession:Z

.field private final mIsVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/TunedInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TunedInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TunedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    iput-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    iput-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TunedInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TunedInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iput-boolean p3, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    iput-boolean p4, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    iput-boolean p5, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    iput p6, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    iput p7, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/media/tv/TunedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TunedInfo;

    iget-object v2, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/tv/TunedInfo;->getInputId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    if-ne v2, v3, :cond_3f

    iget v2, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    iget v3, v0, Landroid/media/tv/TunedInfo;->mAppType:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    iget v3, v0, Landroid/media/tv/TunedInfo;->mAppTag:I

    if-ne v2, v3, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    nop

    :goto_40
    return v1
.end method

.method public getAppTag()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return v0
.end method

.method public getAppType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    return v0
.end method

.method public getChannelUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInputId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMainSession()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    return v0
.end method

.method public isRecordingSession()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";channelUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isMainSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
