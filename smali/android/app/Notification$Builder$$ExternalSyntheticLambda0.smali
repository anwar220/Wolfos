# classes.dex

.class public final synthetic Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/app/Notification$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Notification$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;->f$0:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;->f$0:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->$r8$lambda$YIF3DeoHHMcbP21iJ8acsZqzsyQ(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
