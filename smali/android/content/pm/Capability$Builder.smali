# classes.dex

.class public final Landroid/content/pm/Capability$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmName(Landroid/content/pm/Capability$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/Capability$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iput-object p1, p0, Landroid/content/pm/Capability$Builder;->mName:Ljava/lang/String;

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'/\' is not permitted in the capability name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/content/pm/Capability;
    .registers 3

    new-instance v0, Landroid/content/pm/Capability;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/Capability;-><init>(Landroid/content/pm/Capability$Builder;Landroid/content/pm/Capability-IA;)V

    return-object v0
.end method
