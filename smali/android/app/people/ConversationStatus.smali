# classes.dex

.class public final Landroid/app/people/ConversationStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/ConversationStatus$Builder;,
        Landroid/app/people/ConversationStatus$Availability;,
        Landroid/app/people/ConversationStatus$ActivityType;
    }
.end annotation


# static fields
.field public static final ACTIVITY_ANNIVERSARY:I = 0x2

.field public static final ACTIVITY_AUDIO:I = 0x4

.field public static final ACTIVITY_BIRTHDAY:I = 0x1

.field public static final ACTIVITY_GAME:I = 0x6

.field public static final ACTIVITY_LOCATION:I = 0x7

.field public static final ACTIVITY_NEW_STORY:I = 0x3

.field public static final ACTIVITY_OTHER:I = 0x0

.field public static final ACTIVITY_UPCOMING_BIRTHDAY:I = 0x8

.field public static final ACTIVITY_VIDEO:I = 0x5

.field public static final AVAILABILITY_AVAILABLE:I = 0x0

.field public static final AVAILABILITY_BUSY:I = 0x1

.field public static final AVAILABILITY_OFFLINE:I = 0x2

.field public static final AVAILABILITY_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ConversationStatus"


# instance fields
.field private final mActivity:I

.field private mAvailability:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mEndTimeMs:J

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mId:Ljava/lang/String;

.field private mStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/people/ConversationStatus$1;

    invoke-direct {v0}, Landroid/app/people/ConversationStatus$1;-><init>()V

    sput-object v0, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/people/ConversationStatus$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget v0, p1, Landroid/app/people/ConversationStatus$Builder;->mActivity:I

    iput v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    iget v0, p1, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    iput v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/app/people/ConversationStatus$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-wide v0, p1, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    iget-wide v0, p1, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/people/ConversationStatus$Builder;Landroid/app/people/ConversationStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/app/people/ConversationStatus$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/people/ConversationStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/os/Parcel;)V

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

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_52

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/people/ConversationStatus;

    iget v3, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    iget v4, v2, Landroid/app/people/ConversationStatus;->mActivity:I

    if-ne v3, v4, :cond_50

    iget v3, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    iget v4, v2, Landroid/app/people/ConversationStatus;->mAvailability:I

    if-ne v3, v4, :cond_50

    iget-wide v3, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    iget-wide v5, v2, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_50

    iget-wide v3, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    iget-wide v5, v2, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_50

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v2, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    :goto_51
    return v0

    :cond_52
    :goto_52
    return v1
.end method

.method public getActivity()I
    .registers 2

    iget v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    return v0
.end method

.method public getAvailability()I
    .registers 2

    iget v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEndTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationStatus{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/people/ConversationStatus;->mActivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/people/ConversationStatus;->mAvailability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/people/ConversationStatus;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/people/ConversationStatus;->mEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
