# classes3.dex

.class public final Landroid/service/timezone/TimeZoneProviderEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/timezone/TimeZoneProviderEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_TYPE_PERMANENT_FAILURE:I = 0x1

.field public static final EVENT_TYPE_SUGGESTION:I = 0x2

.field public static final EVENT_TYPE_UNCERTAIN:I = 0x3


# instance fields
.field private final mCreationElapsedMillis:J

.field private final mFailureCause:Ljava/lang/String;

.field private final mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent$1;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderEvent$1;-><init>()V

    sput-object v0, Landroid/service/timezone/TimeZoneProviderEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iput-wide p2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    iput-object p4, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iput-object p5, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    return-void
.end method

.method public static createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 10

    new-instance v6, Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createSuggestionEvent(JLandroid/service/timezone/TimeZoneProviderSuggestion;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 10

    new-instance v6, Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createUncertainEvent(J)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 9

    new-instance v6, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    return-object v6
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

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/timezone/TimeZoneProviderEvent;

    iget v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iget v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    if-ne v3, v4, :cond_38

    iget-wide v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    iget-wide v5, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_38

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public getCreationElapsedMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    return-wide v0
.end method

.method public getFailureCause()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;
    .registers 2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEquivalentTo(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_1c

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iget v2, p1, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    if-eq v1, v2, :cond_d

    goto :goto_1c

    :cond_d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->isEquivalentTo(Landroid/service/timezone/TimeZoneProviderSuggestion;)Z

    move-result v0

    return v0

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderEvent{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreationElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailureCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
