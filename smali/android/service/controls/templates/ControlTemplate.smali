# classes3.dex

.class public abstract Landroid/service/controls/templates/ControlTemplate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/templates/ControlTemplate$TemplateType;
    }
.end annotation


# static fields
.field private static final ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

.field private static final KEY_TEMPLATE_ID:Ljava/lang/String; = "key_template_id"

.field private static final KEY_TEMPLATE_TYPE:Ljava/lang/String; = "key_template_type"

.field public static final NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

.field private static final TAG:Ljava/lang/String; = "ControlTemplate"

.field public static final TYPE_ERROR:I = -0x1

.field public static final TYPE_NO_TEMPLATE:I = 0x0

.field public static final TYPE_RANGE:I = 0x2

.field public static final TYPE_STATELESS:I = 0x8

.field public static final TYPE_TEMPERATURE:I = 0x7

.field public static final TYPE_THUMBNAIL:I = 0x3

.field public static final TYPE_TOGGLE:I = 0x1

.field public static final TYPE_TOGGLE_RANGE:I = 0x6


# instance fields
.field private final mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/service/controls/templates/ControlTemplate$1;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplate$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    new-instance v0, Landroid/service/controls/templates/ControlTemplate$2;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplate$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method static createTemplateFromBundle(Landroid/os/Bundle;)Landroid/service/controls/templates/ControlTemplate;
    .registers 5

    const-string v0, "ControlTemplate"

    if-nez p0, :cond_c

    const-string v1, "Null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0

    :cond_c
    const/4 v1, -0x1

    const-string/jumbo v2, "key_template_type"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    :pswitch_17  #0x4, 0x5
    :try_start_17
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    goto :goto_41

    :pswitch_1a  #0x8
    new-instance v2, Landroid/service/controls/templates/StatelessTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/StatelessTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_20  #0x7
    new-instance v2, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/TemperatureControlTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_26  #0x6
    new-instance v2, Landroid/service/controls/templates/ToggleRangeTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/ToggleRangeTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_2c  #0x3
    new-instance v2, Landroid/service/controls/templates/ThumbnailTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/ThumbnailTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_32  #0x2
    new-instance v2, Landroid/service/controls/templates/RangeTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/RangeTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_38  #0x1
    new-instance v2, Landroid/service/controls/templates/ToggleTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/ToggleTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_3e  #0x0
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_42

    return-object v0

    :goto_41
    return-object v0

    :catch_42
    move-exception v2

    const-string v3, "Error creating template"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_38  #00000001
        :pswitch_32  #00000002
        :pswitch_2c  #00000003
        :pswitch_17  #00000004
        :pswitch_17  #00000005
        :pswitch_26  #00000006
        :pswitch_20  #00000007
        :pswitch_1a  #00000008
    .end packed-switch
.end method

.method public static getErrorTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 1

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public static getNoTemplateObject()Landroid/service/controls/templates/ControlTemplate;
    .registers 1

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method


# virtual methods
.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result v1

    const-string/jumbo v2, "key_template_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    const-string/jumbo v2, "key_template_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTemplateType()I
.end method

.method public prepareTemplateForBinder(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
