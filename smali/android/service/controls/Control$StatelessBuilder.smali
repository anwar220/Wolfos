# classes3.dex

.class public final Landroid/service/controls/Control$StatelessBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatelessBuilder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatelessBuilder"


# instance fields
.field private mAppIntent:Landroid/app/PendingIntent;

.field private mControlId:Ljava/lang/String;

.field private mCustomColor:Landroid/content/res/ColorStateList;

.field private mCustomIcon:Landroid/graphics/drawable/Icon;

.field private mDeviceType:I

.field private mStructure:Ljava/lang/CharSequence;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mZone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/service/controls/Control;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public build()Landroid/service/controls/Control;
    .registers 16

    new-instance v14, Landroid/service/controls/Control;

    iget-object v1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    iget v2, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    iget-object v3, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    sget-object v11, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    const/4 v10, 0x0

    const-string v12, ""

    const/4 v13, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/service/controls/Control;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V

    return-object v14
.end method

.method public setAppIntent(Landroid/app/PendingIntent;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;
    .registers 4

    invoke-static {p1}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatelessBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    goto :goto_24

    :cond_22
    iput p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    :goto_24
    return-object p0
.end method

.method public setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setZone(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method
