<Frame
  id="$header2"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Container
    id="stack2"
    _flexWrap={true}
    _gap="0px"
    _justify="end"
    _type="stack"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    margin="0"
    padding="0"
    showBody={true}
    style={{ map: { border: "rgba(255, 255, 255, 0)" } }}
  >
    <View id="338b5" viewKey="View 1">
      <Button
        id="button9"
        iconBefore="bold/interface-alert-alarm-bell-2"
        style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
      />
      <Button
        id="button7"
        iconBefore="bold/interface-setting-cog"
        style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
      >
        <Event
          event="click"
          method="trigger"
          params={{}}
          pluginId=""
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="button8"
        iconBefore="bold/mail-chat-bubble-oval-question"
        style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
        text="Support"
      />
    </View>
  </Container>
</Frame>
