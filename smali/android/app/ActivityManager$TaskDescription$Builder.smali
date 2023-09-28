# classes.dex

.class public final Landroid/app/ActivityManager$TaskDescription$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mIconRes:I

.field private mLabel:Ljava/lang/String;

.field private mNavigationBarColor:I

.field private mPrimaryColor:I

.field private mStatusBarColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/ActivityManager$TaskDescription;
    .registers 15

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_12

    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v3, v0

    :goto_12
    nop

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    iget v4, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    iget v5, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    iget v6, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    iget v7, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    return-object v0
.end method

.method public setBackgroundColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setNavigationBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    return-object p0
.end method

.method public setPrimaryColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    return-object p0
.end method

.method public setStatusBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    return-object p0
.end method
