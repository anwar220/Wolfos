# classes.dex

.class public final synthetic Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/app/ApplicationPackageManager;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/ApplicationPackageManager;

    iput-object p2, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    iput p3, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/ApplicationPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    iget v2, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->lambda$getUserBadgeForDensityNoBackground$2$android-app-ApplicationPackageManager(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
