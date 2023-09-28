# classes3.dex

.class public final Landroid/telephony/CagInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNAVAILABLE_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private mCagId:J

.field private mCagInAllowedList:Z

.field private mCagName:Ljava/lang/String;

.field private mCagOnlyAccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CagInfo$1;

    invoke-direct {v0}, Landroid/telephony/CagInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CagInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CagInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/telephony/CagInfo;->mCagId:J

    iput-boolean p4, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    iput-boolean p5, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    move-object v2, p1

    check-cast v2, Landroid/telephony/CagInfo;

    iget-object v3, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-wide v3, p0, Landroid/telephony/CagInfo;->mCagId:J

    iget-wide v5, v2, Landroid/telephony/CagInfo;->mCagId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    iget-boolean v3, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    iget-boolean v4, v2, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    if-ne v3, v4, :cond_2a

    iget-boolean v3, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    iget-boolean v4, v2, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0
.end method

.method public getCagId()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    return-wide v0
.end method

.method public getCagInAllowedList()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    return v0
.end method

.method public getCagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    return-object v0
.end method

.method public getCagOnlyAccess()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CagInfo;->mCagId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCagName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCagId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCagOnlyAccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagOnlyAccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCagInAllowedList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagInAllowedList()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
