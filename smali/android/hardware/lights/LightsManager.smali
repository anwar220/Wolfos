# classes2.dex

.class public abstract Landroid/hardware/lights/LightsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/LightsManager$LightsSession;,
        Landroid/hardware/lights/LightsManager$LightType;
    }
.end annotation


# static fields
.field public static final LIGHT_TYPE_MICROPHONE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LightsManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/hardware/lights/LightsManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getLightState(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
.end method

.method public abstract getLights()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end method

.method public abstract openSession()Landroid/hardware/lights/LightsManager$LightsSession;
.end method

.method public abstract openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;
.end method
