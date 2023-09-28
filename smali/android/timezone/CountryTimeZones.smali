# classes3.dex

.class public final Landroid/timezone/CountryTimeZones;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/timezone/CountryTimeZones$OffsetResult;,
        Landroid/timezone/CountryTimeZones$TimeZoneMapping;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;


# direct methods
.method constructor <init>(Lcom/android/i18n/timezone/CountryTimeZones;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/timezone/CountryTimeZones;

    iget-object v1, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    iget-object v2, v0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/CountryTimeZones;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getDefaultTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTimeZoneId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    new-instance v4, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-direct {v4, v3}, Landroid/timezone/CountryTimeZones$TimeZoneMapping;-><init>(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_28
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public hasUtcZone(J)Z
    .registers 4

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->hasUtcZone(J)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDefaultTimeZoneBoosted()Z
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->isDefaultTimeZoneBoosted()Z

    move-result v0

    return v0
.end method

.method public lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 9

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_17

    :cond_a
    new-instance v1, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Z)V

    :goto_17
    return-object v1
.end method

.method public lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 12

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_1b

    :cond_e
    new-instance v1, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Z)V

    :goto_1b
    return-object v1
.end method

.method public matchesCountryCode(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/CountryTimeZones;->matchesCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
