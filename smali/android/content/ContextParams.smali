# classes.dex

.class public final Landroid/content/ContextParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContextParams$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroid/content/ContextParams;


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mNext:Landroid/content/AttributionSource;

.field private final mRenouncedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttributionTag(Landroid/content/ContextParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContextParams;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNext(Landroid/content/ContextParams;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/content/ContextParams;->mNext:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenouncedPermissions(Landroid/content/ContextParams;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/ContextParams$Builder;

    invoke-direct {v0}, Landroid/content/ContextParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    sput-object v0, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/AttributionSource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ContextParams;->mAttributionTag:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ContextParams;->mNext:Landroid/content/AttributionSource;

    if-eqz p3, :cond_b

    move-object v0, p3

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;Landroid/content/ContextParams-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContextParams;-><init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/ContextParams;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getNextAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    iget-object v0, p0, Landroid/content/ContextParams;->mNext:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public getRenouncedPermissions()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public isRenouncedPermission(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
