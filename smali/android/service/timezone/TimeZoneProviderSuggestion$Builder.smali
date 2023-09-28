# classes3.dex

.class public final Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mElapsedRealtimeMillis:J

.field private mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->mTimeZoneIds:Ljava/util/List;

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->mElapsedRealtimeMillis:J

    return-void
.end method


# virtual methods
.method public build()Landroid/service/timezone/TimeZoneProviderSuggestion;
    .registers 6

    new-instance v0, Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->mTimeZoneIds:Ljava/util/List;

    iget-wide v2, p0, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->mElapsedRealtimeMillis:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/timezone/TimeZoneProviderSuggestion;-><init>(Ljava/util/List;JLandroid/service/timezone/TimeZoneProviderSuggestion-IA;)V

    return-object v0
.end method

.method public setElapsedRealtimeMillis(J)Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->mElapsedRealtimeMillis:J

    return-object p0
.end method

.method public setTimeZoneIds(Ljava/util/List;)Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->mTimeZoneIds:Ljava/util/List;

    return-object p0
.end method
