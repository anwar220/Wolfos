# classes.dex

.class public final Landroid/content/ContextParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContextParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttributionTag:Ljava/lang/String;

.field private mNext:Landroid/content/AttributionSource;

.field private mRenouncedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/ContextParams;->-$$Nest$fgetmAttributionTag(Landroid/content/ContextParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mAttributionTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContextParams;->-$$Nest$fgetmRenouncedPermissions(Landroid/content/ContextParams;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    invoke-static {p1}, Landroid/content/ContextParams;->-$$Nest$fgetmNext(Landroid/content/ContextParams;)Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mNext:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/ContextParams;
    .registers 6

    new-instance v0, Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/content/ContextParams$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/ContextParams$Builder;->mNext:Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/ContextParams;-><init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;Landroid/content/ContextParams-IA;)V

    return-object v0
.end method

.method public setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/content/ContextParams$Builder;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/content/ContextParams$Builder;->mNext:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContextParams$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Renouncing permissions requires: android.permission.RENOUNCE_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    iput-object p1, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    return-object p0
.end method
