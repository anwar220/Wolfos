# classes.dex

.class public final enum Landroid/hardware/display/DisplayedContentSample$ColorComponent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayedContentSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/display/DisplayedContentSample$ColorComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v1, "CHANNEL0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    new-instance v1, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v3, "CHANNEL1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    new-instance v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v5, "CHANNEL2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    new-instance v5, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v7, "CHANNEL3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    .registers 2

    const-class v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-object v0
.end method

.method public static values()[Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    .registers 1

    sget-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0}, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-object v0
.end method
