# classes3.dex

.class public Landroid/telephony/ims/RcsConfig$Characteristic;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristic"
.end annotation


# instance fields
.field private final mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

.field private final mParms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParent()Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetParmValue(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetParms(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParms()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSubs(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    iput-object p1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig$Characteristic-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V

    return-void
.end method

.method private getParent()Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method private getParmValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_24

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    goto :goto_10

    :cond_24
    :goto_24
    return-object v0
.end method

.method private getParms()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    return-object v0
.end method

.method private getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    goto :goto_10

    :cond_24
    :goto_24
    return-object v0
.end method

.method private getSubs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    return-object v0
.end method

.method private getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    return-object v0
.end method

.method private hasSubByType(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v1
.end method

.method hasParm(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->hasParm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    return v1

    :cond_23
    goto :goto_10

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/ims/RcsConfig;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsConfig$Characteristic;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\t"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
