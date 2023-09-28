# classes.dex

.class public Landroid/content/pm/AppSearchShortcutInfo$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppSearchShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/content/pm/AppSearchShortcutInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Shortcut"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$setCapabilityBindings$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setCategories$0(I)[Ljava/lang/String;
    .registers 2

    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$setIntents$1(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setIntents$2(I)[Ljava/lang/String;
    .registers 2

    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/appsearch/GenericDocument;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->build()Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/content/pm/AppSearchShortcutInfo;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "flags"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "activity"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_11
    return-object p0
.end method

.method public setCapabilityBindings(Ljava/util/Map;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Landroid/content/pm/AppSearchShortcutInfo$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_78

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    nop

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3, v6}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_31

    :cond_5c
    goto :goto_16

    :cond_5d
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v4, "capability"

    invoke-virtual {p0, v4, v3}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "capabilityBindings"

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_78
    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/AppSearchShortcutInfo$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "categories"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_1c
    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "disabledMessage cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "disabledMessage"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_1b
    return-object p0
.end method

.method public setDisabledReason(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "disabledReason"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "extras"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_11
    return-object p0
.end method

.method public setFlags(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smflattenFlags(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v1, v0

    if-lez v1, :cond_12

    iget-object v1, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    return-object p0
.end method

.method public setIconResId(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [J

    int-to-long v1, p1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const-string v1, "iconResId"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0
.end method

.method public setIconResName(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "iconResName"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_11
    return-object p0
.end method

.method public setIconUri(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "iconUri"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_11
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 8

    if-eqz p1, :cond_61

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_61

    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_1e

    aget-object v3, p1, v2

    const-string v4, "intents cannot contain null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent\'s action must be set"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    array-length v0, p1

    new-array v0, v0, [[B

    const/4 v2, 0x0

    :goto_22
    array-length v3, p1

    if-ge v2, v3, :cond_3e

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_30

    new-array v5, v1, [B

    goto :goto_39

    :cond_30
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v5}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v5

    :goto_39
    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3e
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "intents"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    const-string v1, "intentPersistableExtras"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0

    :cond_61
    :goto_61
    return-object p0
.end method

.method public setLocusId(Landroid/content/LocusId;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "locusId"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_11
    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "longLabel cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "longLabel"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_1b
    return-object p0
.end method

.method public setPerson(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 6

    if-eqz p1, :cond_23

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_23

    :cond_6
    array-length v0, p1

    new-array v0, v0, [Landroid/app/appsearch/GenericDocument;

    const/4 v1, 0x0

    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    aget-object v2, p1, v1

    if-nez v2, :cond_12

    goto :goto_19

    :cond_12
    nop

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutPerson;->instance(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object v3

    aput-object v3, v0, v1

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    const-string/jumbo v1, "person"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0

    :cond_23
    :goto_23
    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "shortLabel cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "shortLabel"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_1d
    return-object p0
.end method
