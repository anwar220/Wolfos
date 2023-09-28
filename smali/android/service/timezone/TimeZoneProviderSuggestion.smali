# classes3.dex

.class public final Landroid/service/timezone/TimeZoneProviderSuggestion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/timezone/TimeZoneProviderSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mElapsedRealtimeMillis:J

.field private final mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/timezone/TimeZoneProviderSuggestion$1;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion$1;-><init>()V

    sput-object v0, Landroid/service/timezone/TimeZoneProviderSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    iput-wide p2, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;JLandroid/service/timezone/TimeZoneProviderSuggestion-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/service/timezone/TimeZoneProviderSuggestion;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method private static immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-wide v3, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    iget-wide v5, v2, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public getTimeZoneIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEquivalentTo(Landroid/service/timezone/TimeZoneProviderSuggestion;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-nez p1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    iget-object v1, p1, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderSuggestion{mTimeZoneIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

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

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method